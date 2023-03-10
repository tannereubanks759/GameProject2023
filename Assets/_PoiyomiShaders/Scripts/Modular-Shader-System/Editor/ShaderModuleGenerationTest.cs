using System;
using UnityEditor;
using UnityEngine;

namespace Poiyomi.ModularShaderSystem
{
    public class ShaderModuleGenerationTest : EditorWindow
    {
        [MenuItem(MSSConstants.WINDOW_PATH + "/Test generator")]
        private static void ShowWindow()
        {
            var window = GetWindow<ShaderModuleGenerationTest>();
            window.titleContent = new GUIContent("Test Generator");
            window.Show();
        }

        private ModularShader _shader;
        private string _message = "";
        private GUIStyle _style;
        
        private void OnGUI()
        {
            if (_style == null)
            {
                _style = new GUIStyle(EditorStyles.label);
                _style.wordWrap = true;
            }
            
            _shader = (ModularShader)EditorGUILayout.ObjectField("Modular shader", _shader, typeof(ModularShader), false);

            if (GUILayout.Button("Generate") && _shader != null)
            {
                var response = ShaderGenerator.VerifyShaderModules(_shader);
                
                switch(response)
                {
                    case VerificationResponse.NoIssues:
                        ShaderGenerator.GenerateMainShader("Assets/_PoiyomiShaders/ModularShader", _shader);
                        _message = "";
                        break;
                    case VerificationResponse.DuplicateModule:
                        _message = "Error: Duplicate modules found";
                        break;
                    case VerificationResponse.MissingDependencies:
                        _message = "Error: Missing dependency modules";
                        break;
                    case VerificationResponse.IncompatibleModules:
                        _message = "Error: Some modules are incompatible with each other";
                        break;
                    default:
                        throw new ArgumentOutOfRangeException();
                }
            }
            
            GUILayout.Label(_message, _style);
        }
    }
}