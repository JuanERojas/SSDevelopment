.class final Lokhttp3/OkHttpClient$1;
.super Lokhttp3/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lokhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-virtual {p1, p2}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void
.end method

.method public addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-virtual {p1, p2, p3}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void
.end method

.method public apply(Lokhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    .line 114
    invoke-virtual {p1, p2, p3}, Lokhttp3/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public callEngineGetStreamAllocation(Lokhttp3/Call;)Lokhttp3/internal/http/StreamAllocation;
    .locals 0

    .line 109
    check-cast p1, Lokhttp3/RealCall;

    iget-object p1, p1, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    iget-object p1, p1, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    return-object p1
.end method

.method public callEnqueue(Lokhttp3/Call;Lokhttp3/Callback;Z)V
    .locals 0

    .line 105
    check-cast p1, Lokhttp3/RealCall;

    invoke-virtual {p1, p2, p3}, Lokhttp3/RealCall;->enqueue(Lokhttp3/Callback;Z)V

    return-void
.end method

.method public connectionBecameIdle(Lokhttp3/ConnectionPool;Lokhttp3/internal/io/RealConnection;)Z
    .locals 0

    .line 87
    invoke-virtual {p1, p2}, Lokhttp3/ConnectionPool;->connectionBecameIdle(Lokhttp3/internal/io/RealConnection;)Z

    move-result p1

    return p1
.end method

.method public get(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/http/StreamAllocation;)Lokhttp3/internal/io/RealConnection;
    .locals 0

    .line 92
    invoke-virtual {p1, p2, p3}, Lokhttp3/ConnectionPool;->get(Lokhttp3/Address;Lokhttp3/internal/http/StreamAllocation;)Lokhttp3/internal/io/RealConnection;

    move-result-object p1

    return-object p1
.end method

.method public getHttpUrlChecked(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 119
    invoke-static {p1}, Lokhttp3/HttpUrl;->getChecked(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1
.end method

.method public internalCache(Lokhttp3/OkHttpClient;)Lokhttp3/internal/InternalCache;
    .locals 0

    .line 82
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->internalCache()Lokhttp3/internal/InternalCache;

    move-result-object p1

    return-object p1
.end method

.method public put(Lokhttp3/ConnectionPool;Lokhttp3/internal/io/RealConnection;)V
    .locals 0

    .line 96
    invoke-virtual {p1, p2}, Lokhttp3/ConnectionPool;->put(Lokhttp3/internal/io/RealConnection;)V

    return-void
.end method

.method public routeDatabase(Lokhttp3/ConnectionPool;)Lokhttp3/internal/RouteDatabase;
    .locals 0

    .line 100
    iget-object p1, p1, Lokhttp3/ConnectionPool;->routeDatabase:Lokhttp3/internal/RouteDatabase;

    return-object p1
.end method

.method public setCache(Lokhttp3/OkHttpClient$Builder;Lokhttp3/internal/InternalCache;)V
    .locals 0

    .line 78
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->setInternalCache(Lokhttp3/internal/InternalCache;)V

    return-void
.end method
