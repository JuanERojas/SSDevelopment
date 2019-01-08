.class public final Lcom/tikilive/ui/weather/WeatherContract$LocationEntry;
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
    name = "LocationEntry"
.end annotation


# static fields
.field public static final COLUMN_CITY_NAME:Ljava/lang/String; = "city_name"

.field public static final COLUMN_COORD_LAT:Ljava/lang/String; = "coord_lat"

.field public static final COLUMN_COORD_LONG:Ljava/lang/String; = "coord_long"

.field public static final COLUMN_COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field public static final COLUMN_LOCATION_SETTING:Ljava/lang/String; = "location_setting"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/tv.woplay.ver.weather.provider.location"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/tv.woplay.ver.weather.provider.location"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "location"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    sget-object v0, Lcom/tikilive/ui/weather/WeatherContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    .line 37
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tikilive/ui/weather/WeatherContract$LocationEntry;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildLocationUri(J)Landroid/net/Uri;
    .locals 1

    .line 62
    sget-object v0, Lcom/tikilive/ui/weather/WeatherContract$LocationEntry;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
