.class public Lcom/tikilive/ui/weather/WeatherProvider;
.super Landroid/content/ContentProvider;
.source "WeatherProvider.java"


# static fields
.field static final LOCATION:I = 0x12c

.field static final WEATHER:I = 0x64

.field static final WEATHER_WITH_LOCATION:I = 0x65

.field static final WEATHER_WITH_LOCATION_AND_DATE:I = 0x66

.field private static final sLocationSettingAndDaySelection:Ljava/lang/String; = "location.location_setting = ? AND date = ? "

.field private static final sLocationSettingSelection:Ljava/lang/String; = "location.location_setting = ? "

.field private static final sLocationSettingWithStartDateSelection:Ljava/lang/String; = "location.location_setting = ? AND date >= ? "

.field private static final sUriMatcher:Landroid/content/UriMatcher;

.field private static final sWeatherByLocationSettingQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;


# instance fields
.field private mOpenHelper:Lcom/tikilive/ui/weather/WeatherDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    invoke-static {}, Lcom/tikilive/ui/weather/WeatherProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/tikilive/ui/weather/WeatherProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 25
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    sput-object v0, Lcom/tikilive/ui/weather/WeatherProvider;->sWeatherByLocationSettingQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;

    .line 29
    sget-object v0, Lcom/tikilive/ui/weather/WeatherProvider;->sWeatherByLocationSettingQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;

    const-string v1, "weather INNER JOIN location ON weather.location_id = location._id"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static buildUriMatcher()Landroid/content/UriMatcher;
    .locals 4

    .line 98
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    const-string v1, "tv.woplay.ver.weather.provider"

    const-string v2, "weather"

    const/16 v3, 0x64

    .line 103
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "tv.woplay.ver.weather.provider"

    const-string v2, "weather/*"

    const/16 v3, 0x65

    .line 104
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "tv.woplay.ver.weather.provider"

    const-string v2, "weather/*/#"

    const/16 v3, 0x66

    .line 105
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "tv.woplay.ver.weather.provider"

    const-string v2, "location"

    const/16 v3, 0x12c

    .line 106
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private getWeatherByLocationSetting(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 56
    invoke-static {p1}, Lcom/tikilive/ui/weather/WeatherContract$WeatherEntry;->getLocationSettingFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {p1}, Lcom/tikilive/ui/weather/WeatherContract$WeatherEntry;->getStartDateFromUri(Landroid/net/Uri;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    const-string p1, "location.location_setting = ? "

    .line 64
    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v3

    move-object v4, p1

    move-object v5, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 66
    new-array p1, p1, [Ljava/lang/String;

    aput-object v0, p1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "location.location_setting = ? AND date >= ? "

    move-object v5, p1

    move-object v4, v0

    .line 70
    :goto_0
    sget-object v1, Lcom/tikilive/ui/weather/WeatherProvider;->sWeatherByLocationSettingQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;

    iget-object p1, p0, Lcom/tikilive/ui/weather/WeatherProvider;->mOpenHelper:Lcom/tikilive/ui/weather/WeatherDbHelper;

    invoke-virtual {p1}, Lcom/tikilive/ui/weather/WeatherDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private getWeatherByLocationSettingAndDate(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .line 82
    invoke-static {p1}, Lcom/tikilive/ui/weather/WeatherContract$WeatherEntry;->getLocationSettingFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {p1}, Lcom/tikilive/ui/weather/WeatherContract$WeatherEntry;->getDateFromUri(Landroid/net/Uri;)J

    move-result-wide v1

    .line 85
    sget-object v3, Lcom/tikilive/ui/weather/WeatherProvider;->sWeatherByLocationSettingQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;

    iget-object p1, p0, Lcom/tikilive/ui/weather/WeatherProvider;->mOpenHelper:Lcom/tikilive/ui/weather/WeatherDbHelper;

    invoke-virtual {p1}, Lcom/tikilive/ui/weather/WeatherDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v6, "location.location_setting = ? AND date = ? "

    const/4 p1, 0x2

    new-array v7, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object v0, v7, p1

    .line 88
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p2

    move-object v10, p3

    .line 85
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private normalizeDate(Landroid/content/ContentValues;)V
    .locals 3

    const-string v0, "date"

    .line 250
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "date"

    .line 251
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "date"

    .line 252
    invoke-static {v0, v1}, Lcom/tikilive/ui/weather/WeatherContract;->normalizeDate(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8

    .line 280
    iget-object v0, p0, Lcom/tikilive/ui/weather/WeatherProvider;->mOpenHelper:Lcom/tikilive/ui/weather/WeatherDbHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/weather/WeatherDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 281
    sget-object v1, Lcom/tikilive/ui/weather/WeatherProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 300
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    return p1

    .line 284
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 287
    :try_start_0
    array-length p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v3, p2, v1

    .line 288
    invoke-direct {p0, v3}, Lcom/tikilive/ui/weather/WeatherProvider;->normalizeDate(Landroid/content/ContentValues;)V

    const-string v4, "weather"

    const/4 v5, 0x0

    .line 289
    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v2

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/tikilive/ui/weather/WeatherProvider;->mOpenHelper:Lcom/tikilive/ui/weather/WeatherDbHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/weather/WeatherDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 225
    sget-object v1, Lcom/tikilive/ui/weather/WeatherProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-nez p2, :cond_0

    const-string p2, "1"

    :cond_0
    const/16 v2, 0x64

    if-eq v1, v2, :cond_2

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_1

    .line 243
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown uri: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "location"

    .line 239
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    const-string p1, "weather"

    .line 235
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 123
    sget-object v0, Lcom/tikilive/ui/weather/WeatherProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p1, "vnd.android.cursor.item/tv.woplay.ver.weather.provider.weather"

    return-object p1

    :pswitch_1
    const-string p1, "vnd.android.cursor.dir/tv.woplay.ver.weather.provider.weather"

    return-object p1

    :pswitch_2
    const-string p1, "vnd.android.cursor.dir/tv.woplay.ver.weather.provider.weather"

    return-object p1

    :cond_0
    const-string p1, "vnd.android.cursor.dir/tv.woplay.ver.weather.provider.location"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    .line 193
    iget-object v0, p0, Lcom/tikilive/ui/weather/WeatherProvider;->mOpenHelper:Lcom/tikilive/ui/weather/WeatherDbHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/weather/WeatherDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 194
    sget-object v1, Lcom/tikilive/ui/weather/WeatherProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x64

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_0

    .line 217
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    const-string v1, "location"

    .line 208
    invoke-virtual {v0, v1, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long p2, v0, v3

    if-lez p2, :cond_1

    .line 210
    invoke-static {v0, v1}, Lcom/tikilive/ui/weather/WeatherContract$LocationEntry;->buildLocationUri(J)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 212
    :cond_1
    new-instance p2, Landroid/database/SQLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to insert row into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 199
    :cond_2
    invoke-direct {p0, p2}, Lcom/tikilive/ui/weather/WeatherProvider;->normalizeDate(Landroid/content/ContentValues;)V

    const-string v1, "weather"

    .line 200
    invoke-virtual {v0, v1, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long p2, v0, v3

    if-lez p2, :cond_3

    .line 202
    invoke-static {v0, v1}, Lcom/tikilive/ui/weather/WeatherContract$WeatherEntry;->buildWeatherUri(J)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1

    .line 204
    :cond_3
    new-instance p2, Landroid/database/SQLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to insert row into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onCreate()Z
    .locals 2

    .line 115
    new-instance v0, Lcom/tikilive/ui/weather/WeatherDbHelper;

    invoke-virtual {p0}, Lcom/tikilive/ui/weather/WeatherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tikilive/ui/weather/WeatherDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tikilive/ui/weather/WeatherProvider;->mOpenHelper:Lcom/tikilive/ui/weather/WeatherDbHelper;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 145
    sget-object v0, Lcom/tikilive/ui/weather/WeatherProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 185
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 149
    :pswitch_0
    invoke-direct {p0, p1, p2, p5}, Lcom/tikilive/ui/weather/WeatherProvider;->getWeatherByLocationSettingAndDate(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-direct {p0, p1, p2, p5}, Lcom/tikilive/ui/weather/WeatherProvider;->getWeatherByLocationSetting(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/tikilive/ui/weather/WeatherProvider;->mOpenHelper:Lcom/tikilive/ui/weather/WeatherDbHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/weather/WeatherDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "weather"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/weather/WeatherProvider;->mOpenHelper:Lcom/tikilive/ui/weather/WeatherDbHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/weather/WeatherDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "location"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 187
    :goto_0
    invoke-virtual {p0}, Lcom/tikilive/ui/weather/WeatherProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/tikilive/ui/weather/WeatherProvider;->mOpenHelper:Lcom/tikilive/ui/weather/WeatherDbHelper;

    invoke-virtual {v0}, Lcom/tikilive/ui/weather/WeatherDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 259
    sget-object v1, Lcom/tikilive/ui/weather/WeatherProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_0

    .line 273
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    const-string p1, "location"

    .line 269
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 264
    :cond_1
    invoke-direct {p0, p2}, Lcom/tikilive/ui/weather/WeatherProvider;->normalizeDate(Landroid/content/ContentValues;)V

    const-string p1, "weather"

    .line 265
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method
