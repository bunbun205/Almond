#pragma once

extern Almond::Application *Almond::CreateApplication(int argc, char** argv);
bool g_ApplicationRunning = true;

namespace Almond
{
        
        int Main(int argc, char** argv) {

                while (g_ApplicationRunning) {

                        Almond::Application* app = Almond::CreateApplication(argc, argv);
                        app->Run();
                        delete app;
                }

                return 0;
        }
} // namespace Almond

int main(int argc, char** argv) {

        return Almond::Main(argc, argv);
}
