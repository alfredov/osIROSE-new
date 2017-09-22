#pragma once

#include "system.h"

#include <sol.hpp>

#include <unordered_set>

namespace Systems {

class LuaSystem : public System {
    public:
        LuaSystem(SystemManager &manager) : System(manager) {}
        virtual ~LuaSystem() = default;

        void registerLuaUpdate(Entity e, const std::string& luaFunc, double dt) {
            callbacks_.insert({e, state_.load(luaFunc), dt});
        }
    
        template <typename... Args>
        void callLuaFunction(Entity e, const std::string& luaFunc, Args... args) {
            auto func = state_.load(luaFunc);
            func(e, args...);
        }
    
        virtual void update(EntityManager&, double dt) {
            for (auto &it : callbacks_) {
                it.dt += dt;
                if (it.dt >= timeout) {
                    func(it.e, it.dt);
                    it.dt = 0.f;
                }
            }
        }
    
    private:
        sol::state state_;
        
        struct Callback {
            Entity e;
            sol::function func;
            double timeout;
            double dt = 0;
        };
        std::unordered_set<Callback> callbacks_;
};

}
