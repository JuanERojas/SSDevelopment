.class Lcom/tikilive/ui/account/DeviceAdapter$2$4;
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


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/DeviceAdapter$2;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2$4;->this$1:Lcom/tikilive/ui/account/DeviceAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 304
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
