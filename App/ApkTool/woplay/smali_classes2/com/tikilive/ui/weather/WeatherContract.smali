.class public Lcom/tikilive/ui/weather/WeatherContract;
.super Ljava/lang/Object;
.source "WeatherContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/weather/WeatherContract$WeatherEntry;,
        Lcom/tikilive/ui/weather/WeatherContract$LocationEntry;
    }
.end annotation


# static fields
.field public static final BASE_CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_AUTHORITY:Ljava/lang/String; = "tv.woplay.ver.weather.provider"

.field public static final PATH_LOCATION:Ljava/lang/String; = "location"

.field public static final PATH_WEATHER:Ljava/lang/String; = "weather"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://tv.woplay.ver.weather.provider"

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tikilive/ui/weather/WeatherContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static normalizeDate(J)J
    .locals 3

    .line 25
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 26
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 27
    iget-wide v1, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v1, v2}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p0

    .line 28
    invoke-virtual {v0, p0}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide p0

    return-wide p0
.end method
