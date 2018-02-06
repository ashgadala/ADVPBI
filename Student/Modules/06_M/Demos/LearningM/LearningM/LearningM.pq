// This file contains your Data Connector logic
section LearningM;

[DataSource.Kind="LearningM", Publish="LearningM.Publish"]
shared LearningM.Contents = (optional message as text) =>
    let
        _message = if (message <> null) then message else "(no message)",
        a = "Hello from LearningM: " & _message
    in
        a;

// Data Source Kind description
LearningM = [
    Authentication = [
        // Key = [],
        // UsernamePassword = [],
        // Windows = [],
        Implicit = []
    ],
    Label = Extension.LoadString("DataSourceLabel")
];

// Data Source UI publishing description
LearningM.Publish = [
    Beta = true,
    Category = "Other",
    ButtonText = { Extension.LoadString("ButtonTitle"), Extension.LoadString("ButtonHelp") },
    LearnMoreUrl = "https://powerbi.microsoft.com/",
    SourceImage = LearningM.Icons,
    SourceTypeImage = LearningM.Icons
];

LearningM.Icons = [
    Icon16 = { Extension.Contents("LearningM16.png"), Extension.Contents("LearningM20.png"), Extension.Contents("LearningM24.png"), Extension.Contents("LearningM32.png") },
    Icon32 = { Extension.Contents("LearningM32.png"), Extension.Contents("LearningM40.png"), Extension.Contents("LearningM48.png"), Extension.Contents("LearningM64.png") }
];
