using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;

namespace Poiyomi.ModularShaderSystem
{
    [Serializable]
    public class ShaderFunction 
    {
        public string Name;
        public string AppendAfter;
        public short Priority = 100;
        public TemplateAsset ShaderFunctionCode;
        public List<Variable> UsedVariables;
        [FormerlySerializedAs("VariableSinkKeywords")] [FormerlySerializedAs("VariableSinkKeyword")] public List<string> VariableKeywords;
        [FormerlySerializedAs("CodeSinkKeywords")] [FormerlySerializedAs("CodeSinkKeyword")] public List<string> CodeKeywords;
    }
}