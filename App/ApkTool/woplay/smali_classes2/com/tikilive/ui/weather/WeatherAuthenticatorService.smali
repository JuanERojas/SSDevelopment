.class public Lcom/tikilive/ui/weather/WeatherAuthenticatorService;
.super Landroid/app/Service;
.source "WeatherAuthenticatorService.java"


# instance fields
.field private mAuthenticator:Lcom/tikilive/ui/weather/WeatherAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 26
    iget-object p1, p0, Lcom/tikilive/ui/weather/WeatherAuthenticatorService;->mAuthenticator:Lcom/tikilive/ui/weather/WeatherAuthenticator;

    invoke-virtual {p1}, Lcom/tikilive/ui/weather/WeatherAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 17
    new-instance v0, Lcom/tikilive/ui/weather/WeatherAuthenticator;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/weather/WeatherAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tikilive/ui/weather/WeatherAuthenticatorService;->mAuthenticator:Lcom/tikilive/ui/weather/WeatherAuthenticator;

    return-void
.end method
