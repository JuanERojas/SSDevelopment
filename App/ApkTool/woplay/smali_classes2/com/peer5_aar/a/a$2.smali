.class public final Lcom/peer5_aar/a/a$2;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peer5_aar/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/peer5_aar/a/a;


# direct methods
.method public constructor <init>(Lcom/peer5_aar/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/peer5_aar/a/a$2;->a:Lcom/peer5_aar/a/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/peer5_aar/a/a$2;->a:Lcom/peer5_aar/a/a;

    invoke-static {p1}, Lcom/peer5_aar/a/a;->a(Lcom/peer5_aar/a/a;)Z

    iget-object p1, p0, Lcom/peer5_aar/a/a$2;->a:Lcom/peer5_aar/a/a;

    invoke-static {p1}, Lcom/peer5_aar/a/a;->b(Lcom/peer5_aar/a/a;)Landroid/webkit/WebView;

    move-result-object p1

    const-string p2, "javascript:initialParams(\'8886\',\'http://127.0.0.1:8886/\')"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
