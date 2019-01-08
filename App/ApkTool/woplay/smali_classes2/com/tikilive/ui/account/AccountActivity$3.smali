.class Lcom/tikilive/ui/account/AccountActivity$3;
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


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/AccountActivity;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$3;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 110
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity$3;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120190

    .line 111
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f120191

    .line 112
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 113
    new-instance v0, Lcom/tikilive/ui/account/AccountActivity$3$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/account/AccountActivity$3$1;-><init>(Lcom/tikilive/ui/account/AccountActivity$3;)V

    const v1, 0x7f12018f

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 142
    new-instance v0, Lcom/tikilive/ui/account/AccountActivity$3$2;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/account/AccountActivity$3$2;-><init>(Lcom/tikilive/ui/account/AccountActivity$3;)V

    const v1, 0x7f120044

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method
