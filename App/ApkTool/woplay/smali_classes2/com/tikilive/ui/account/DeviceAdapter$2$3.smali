.class Lcom/tikilive/ui/account/DeviceAdapter$2$3;
.super Ljava/lang/Object;
.source "DeviceAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/DeviceAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

.field final synthetic val$current:Lcom/tikilive/ui/model/Device;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/DeviceAdapter$2;Lcom/tikilive/ui/model/Device;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$3;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iput-object p2, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$3;->val$current:Lcom/tikilive/ui/model/Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 268
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 269
    iget-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$3;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object p1, p1, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {p1}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    .line 270
    iget-object p2, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$3;->val$current:Lcom/tikilive/ui/model/Device;

    .line 271
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Device;->getId()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/tikilive/ui/account/DeviceAdapter$2$3$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/account/DeviceAdapter$2$3$1;-><init>(Lcom/tikilive/ui/account/DeviceAdapter$2$3;)V

    new-instance v1, Lcom/tikilive/ui/account/DeviceAdapter$2$3$2;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/account/DeviceAdapter$2$3$2;-><init>(Lcom/tikilive/ui/account/DeviceAdapter$2$3;)V

    .line 270
    invoke-virtual {p1, p2, v0, v1}, Lcom/tikilive/ui/backend/Api;->removeDevice(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method
