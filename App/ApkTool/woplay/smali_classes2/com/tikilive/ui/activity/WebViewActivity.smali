.class public Lcom/tikilive/ui/activity/WebViewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WebViewActivity.java"


# static fields
.field public static final ARG_URL:Ljava/lang/String; = "arg_url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 14
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    new-instance p1, Landroid/webkit/WebView;

    invoke-direct {p1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/activity/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 19
    new-instance v0, Lcom/tikilive/ui/activity/WebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/activity/WebViewActivity$1;-><init>(Lcom/tikilive/ui/activity/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 26
    invoke-virtual {p0}, Lcom/tikilive/ui/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "arg_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
