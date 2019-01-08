.class Lcom/tikilive/ui/account/AccountActivity$3$2;
.super Ljava/lang/Object;
.source "AccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/AccountActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/account/AccountActivity$3;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/AccountActivity$3;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$3$2;->this$1:Lcom/tikilive/ui/account/AccountActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 145
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
