using System;
using System.IO;
using System.Linq;
using NUnit.Framework;
using Xamarin.UITest;
using Xamarin.UITest.Queries;

namespace UITestDemo.UITest
{
    [TestFixture(Platform.Android)]
    //[TestFixture(Platform.iOS)]
    public class Tests
    {
        IApp app;
        Platform platform;

        public Tests(Platform platform)
        {
            this.platform = platform;
        }

        [SetUp]
        public void BeforeEachTest()
        {
            app = AppInitializer.StartApp(platform);
        }

        //[Test]
        public void AppLaunches()
        {
            app.Screenshot("First screen.");
        }

        [Test]
        public void ClearTextDemoTest()
        {
            app.Tap(x => x.Marked("Add"));
            
            app.Tap(x => x.Text("Item name"));
            app.Screenshot("Criar nova tarefa, vamos adicionar um titulo");
            app.ClearText();
            app.EnterText("Nova tarefa");
            app.Screenshot("Titulo adicionado");

            app.Tap("description");
            app.Screenshot("A informação do campo descrição vai ser alterada");
            app.ClearText();
            app.EnterText("Alterando a descrição da tarefa");
            app.Screenshot("Descrição alterada");

            app.Screenshot("Vamos salvar a nova tarefa");
            app.Tap("Save");
            app.Screenshot("Nova tarefa criada");

            //app.Back();
        }
    }
}
