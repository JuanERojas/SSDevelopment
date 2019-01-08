.class Lcom/tikilive/ui/account/AccountActivity$1;
.super Ljava/lang/Object;
.source "AccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/AccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/account/AccountActivity;

.field final synthetic val$tabDevices:Landroid/widget/TextView;

.field final synthetic val$tabSubscriptions:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/AccountActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$1;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    iput-object p2, p0, Lcom/tikilive/ui/account/AccountActivity$1;->val$tabSubscriptions:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/tikilive/ui/account/AccountActivity$1;->val$tabDevices:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$1;->val$tabSubscriptions:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 76
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$1;->val$tabDevices:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 77
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$1;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-static {p1}, Lcom/tikilive/ui/account/AccountActivity;->access$000(Lcom/tikilive/ui/account/AccountActivity;)V

    return-void
.end method
