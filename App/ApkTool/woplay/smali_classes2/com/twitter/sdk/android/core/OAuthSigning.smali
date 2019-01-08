.class public Lcom/twitter/sdk/android/core/OAuthSigning;
.super Ljava/lang/Object;
.source "OAuthSigning.java"


# static fields
.field static final VERIFY_CREDENTIALS_URL:Ljava/lang/String; = "https://api.twitter.com/1.1/account/verify_credentials.json"


# instance fields
.field final authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field final authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

.field final oAuth1aHeaders:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;)V
    .locals 1

    .line 45
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/core/OAuthSigning;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "authConfig must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    .line 54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "authToken must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_1
    iput-object p1, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 58
    iput-object p2, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 59
    iput-object p3, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->oAuth1aHeaders:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;

    return-void
.end method


# virtual methods
.method public getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->oAuth1aHeaders:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;->getAuthorizationHeader(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOAuthEchoHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->oAuth1aHeaders:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;->getOAuthEchoHeaders(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getOAuthEchoHeadersForVerifyCredentials()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->oAuth1aHeaders:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/OAuthSigning;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    sget-object v3, Lio/fabric/sdk/android/services/network/HttpMethod;->GET:Lio/fabric/sdk/android/services/network/HttpMethod;

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/network/HttpMethod;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "https://api.twitter.com/1.1/account/verify_credentials.json"

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;->getOAuthEchoHeaders(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
