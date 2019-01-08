.class Lcom/tikilive/ui/account/ReplaceDeviceActivity$1;
.super Ljava/lang/Object;
.source "ReplaceDeviceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/ReplaceDeviceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/ReplaceDeviceActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$1;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$1;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->logout()V

    return-void
.end method
