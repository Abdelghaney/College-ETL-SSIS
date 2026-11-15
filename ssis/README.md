# SSIS project

`Collage_ELT.slnx` is the Visual Studio solution. It points to the project
`Collage_ELT/Collage_ELT.dtproj`, so the project folder (`.dtproj`, `.dtsx`
packages, `.conmgr` connection managers) must sit next to it:

```
ssis/
├── Collage_ELT.slnx
└── Collage_ELT/
    ├── Collage_ELT.dtproj
    ├── *.dtsx
    └── *.conmgr
```

Package control flow (inside a Sequence Container):

1. **Execute SQL Task**: truncates `STG_full_data`
2. **Data Flow Task**: loads `ODS_db.full_data` into `STG_db.STG_full_data`

Connection managers: `ODS_db` and `STG_db` (point them at your own SQL Server instance).
