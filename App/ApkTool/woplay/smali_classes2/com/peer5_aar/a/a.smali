.class public final Lcom/peer5_aar/a/a;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/peer5_aar/a/a;


# instance fields
.field public a:Landroid/webkit/WebView;

.field public b:Landroid/content/Context;

.field public c:Z

.field public d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/peer5_aar/a/a;->c:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/peer5_aar/a/a;->d:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/peer5_aar/a/a;
    .locals 1

    sget-object v0, Lcom/peer5_aar/a/a;->e:Lcom/peer5_aar/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/peer5_aar/a/a;->e:Lcom/peer5_aar/a/a;

    return-object v0

    :cond_0
    new-instance v0, Lcom/peer5_aar/a/a;

    invoke-direct {v0}, Lcom/peer5_aar/a/a;-><init>()V

    sput-object v0, Lcom/peer5_aar/a/a;->e:Lcom/peer5_aar/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/peer5_aar/a/a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/peer5_aar/a/a;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/peer5_aar/a/a;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/peer5_aar/a/a;->a:Landroid/webkit/WebView;

    return-object p0
.end method
