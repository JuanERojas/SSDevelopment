.class Lcom/tikilive/ui/backend/Ads$2;
.super Ljava/lang/Object;
.source "Ads.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/backend/Ads;->doGetSettings(Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/backend/Ads;

.field final synthetic val$listener:Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/backend/Ads;Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/tikilive/ui/backend/Ads$2;->this$0:Lcom/tikilive/ui/backend/Ads;

    iput-object p2, p0, Lcom/tikilive/ui/backend/Ads$2;->val$listener:Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 91
    invoke-static {}, Lcom/tikilive/ui/backend/Ads;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/tikilive/ui/backend/Ads$2;->val$listener:Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;

    iget-object v0, p0, Lcom/tikilive/ui/backend/Ads$2;->this$0:Lcom/tikilive/ui/backend/Ads;

    invoke-interface {p1, v0}, Lcom/tikilive/ui/backend/Ads$OnAdsSettingsAvailable;->onAdsSettingsAvailable(Lcom/tikilive/ui/backend/Ads;)V

    return-void
.end method
