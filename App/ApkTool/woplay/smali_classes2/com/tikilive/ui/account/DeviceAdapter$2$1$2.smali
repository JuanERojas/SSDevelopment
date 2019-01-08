.class Lcom/tikilive/ui/account/DeviceAdapter$2$1$2;
.super Ljava/lang/Object;
.source "DeviceAdapter.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/DeviceAdapter$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/DeviceAdapter$2$1;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$1$2;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 6

    .line 207
    invoke-static {}, Lcom/tikilive/ui/account/DeviceAdapter;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$1$2;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;

    iget-object p1, p1, Lcom/tikilive/ui/account/DeviceAdapter$2$1;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object p1, p1, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {p1}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$1$2;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;

    iget-object v0, v0, Lcom/tikilive/ui/account/DeviceAdapter$2$1;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object v0, v0, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v0}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1200de

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$1$2;->this$2:Lcom/tikilive/ui/account/DeviceAdapter$2$1;

    iget-object v4, v4, Lcom/tikilive/ui/account/DeviceAdapter$2$1;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    iget-object v4, v4, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v4}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f1200bf

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
