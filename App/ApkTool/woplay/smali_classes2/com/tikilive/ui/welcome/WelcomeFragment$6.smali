.class Lcom/tikilive/ui/welcome/WelcomeFragment$6;
.super Ljava/lang/Object;
.source "WelcomeFragment.java"

# interfaces
.implements Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment;->initMainMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$6;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationSettingsRetrieved(Lcom/tikilive/ui/application/MyApplication;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$6;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {v0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$500(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/application/MyApplication;)V

    return-void
.end method
