using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Medicare.Startup))]
namespace Medicare
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
