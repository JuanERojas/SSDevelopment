.class public final Lcom/tikilive/ui/weather/WeatherContract$WeatherEntry;
.super Ljava/lang/Object;
.source "WeatherContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/weather/WeatherContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeatherEntry"
.end annotation


# static fields
.field public static final COLUMN_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_LOC_KEY:Ljava/lang/String; = "location_id"

.field public static final COLUMN_MAX_TEMP:Ljava/lang/String; = "max"

.field public static final COLUMN_MIN_TEMP:Ljava/lang/String; = "min"

.field public static final COLUMN_SHORT_DESC:Ljava/lang/String; = "short_desc"

.field public static final COLUMN_WEATHER_ID:Ljava/lang/String; = "weather_id"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/tv.woplay.ver.weather.provider.weather"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/tv.woplay.ver.weather.provider.weather"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "weather"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    sget-object v0, Lcom/tikilive/ui/weather/WeatherContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    .line 72
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "weather"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tikilive/ui/weather/WeatherContract$WeatherEntry;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildWeatherLocation(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 102
    sget-object v0, Lcom/tikilive/ui/weather/WeatherContract$WeatherEntry;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildWeatherLocationWithDate(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 1

    .line 116
    sget-object v0, Lcom/tikilive/ui/weather/WeatherContract$WeatherEntry;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 118
    invoke-static {p1, p2}, Lcom/tikilive/ui/weather/WeatherContract;->normalizeDate(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildWeatherLocationWithStartDate(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 1

    .line 108
    invoke-static {p1, p2}, Lcom/tikilive/ui/weather/WeatherContract;->normalizeDate(J)J

    move-result-wide p1

    .line 109
    sget-object v0, Lcom/tikilive/ui/weather/WeatherContract$WeatherEntry;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "date"

    .line 111
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static buildWeatherUri(J)Landroid/net/Uri;
    .locals 1

    .line 98
    sget-object v0, Lcom/tikilive/ui/weather/WeatherContract$WeatherEntry;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getDateFromUri(Landroid/net/Uri;)J
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLocationSettingFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 123
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getStartDateFromUri(Landroid/net/Uri;)J
    .locals 2

    const-string v0, "date"

    .line 131
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 133
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
