.class Lcom/github/snowdream/android/app/DefaultUpdateListener$3;
.super Ljava/lang/Object;
.source "DefaultUpdateListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/snowdream/android/app/DefaultUpdateListener;->onShowUpdateUI(Lcom/github/snowdream/android/app/UpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/snowdream/android/app/DefaultUpdateListener;

.field final synthetic val$info:Lcom/github/snowdream/android/app/UpdateInfo;


# direct methods
.method constructor <init>(Lcom/github/snowdream/android/app/DefaultUpdateListener;Lcom/github/snowdream/android/app/UpdateInfo;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener$3;->this$0:Lcom/github/snowdream/android/app/DefaultUpdateListener;

    iput-object p2, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener$3;->val$info:Lcom/github/snowdream/android/app/UpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener$3;->this$0:Lcom/github/snowdream/android/app/DefaultUpdateListener;

    iget-object p2, p0, Lcom/github/snowdream/android/app/DefaultUpdateListener$3;->val$info:Lcom/github/snowdream/android/app/UpdateInfo;

    invoke-virtual {p1, p2}, Lcom/github/snowdream/android/app/DefaultUpdateListener;->informUpdate(Lcom/github/snowdream/android/app/UpdateInfo;)V

    return-void
.end method
