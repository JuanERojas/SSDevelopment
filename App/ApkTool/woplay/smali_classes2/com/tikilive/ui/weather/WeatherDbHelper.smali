.class public Lcom/tikilive/ui/weather/WeatherDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WeatherDbHelper.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "weather.db"

.field private static final DATABASE_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "weather.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 21
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE location (_id INTEGER PRIMARY KEY,location_setting TEXT UNIQUE NOT NULL, city_name TEXT NOT NULL, country_code TEXT NOT NULL, coord_lat REAL NOT NULL, coord_long REAL NOT NULL );"

    .line 65
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE weather (_id INTEGER PRIMARY KEY AUTOINCREMENT,location_id INTEGER NOT NULL, date INTEGER NOT NULL, short_desc TEXT NOT NULL, weather_id INTEGER NOT NULL,min REAL NOT NULL, max REAL NOT NULL,  FOREIGN KEY (location_id) REFERENCES location (_id),  UNIQUE (date, location_id) ON CONFLICT REPLACE);"

    .line 66
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS location"

    .line 77
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS weather"

    .line 78
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/weather/WeatherDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
