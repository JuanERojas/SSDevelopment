.class public Lcom/fasterxml/jackson/databind/SequenceWriter;
.super Ljava/lang/Object;
.source "SequenceWriter.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/Versioned;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field protected final _cfgCloseCloseable:Z

.field protected final _cfgFlush:Z

.field protected final _closeGenerator:Z

.field protected _closed:Z

.field protected final _config:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field protected _dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

.field protected final _generator:Lcom/fasterxml/jackson/core/JsonGenerator;

.field protected _openArray:Z

.field protected final _provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

.field protected final _rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;Lcom/fasterxml/jackson/core/JsonGenerator;ZLcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    .line 83
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 84
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_closeGenerator:Z

    .line 85
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->getValueSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 86
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->getTypeSerializer()Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 88
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 89
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object p2, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgFlush:Z

    .line 90
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object p2, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgCloseCloseable:Z

    .line 93
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->emptyForRootValues()Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    return-void
.end method

.method private final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddRootValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object p1

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->addSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object p1

    .line 324
    :goto_0
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 325
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object p1
.end method

.method private final _findAndAddDynamic(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddRootValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object p1

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object p1

    .line 311
    :goto_0
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 312
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object p1
.end method


# virtual methods
.method protected _writeCloseableValue(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    move-object v0, p1

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-nez v2, :cond_1

    .line 253
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 254
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    if-nez v3, :cond_0

    .line 256
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_findAndAddDynamic(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 259
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v3, v4, p1, v1, v2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 260
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgFlush:Z

    if-eqz p1, :cond_2

    .line 261
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 265
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_3

    .line 269
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 270
    :catch_0
    :cond_3
    throw p1
.end method

.method protected _writeCloseableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    move-object v0, p1

    check-cast v0, Ljava/io/Closeable;

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 283
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v2, v3, p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 286
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgFlush:Z

    if-eqz p1, :cond_1

    .line 287
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    const/4 p1, 0x0

    .line 291
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_2

    .line 295
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 296
    :catch_0
    :cond_2
    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_closed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_closed:Z

    .line 231
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_openArray:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_openArray:Z

    .line 233
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 235
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_closeGenerator:Z

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    :cond_1
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_closed:Z

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    :cond_0
    return-void
.end method

.method public init(Z)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_openArray:Z

    :cond_0
    return-object p0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .line 117
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method

.method public write(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    return-object p0

    .line 138
    :cond_0
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgCloseCloseable:Z

    if-eqz v1, :cond_1

    instance-of v1, p1, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_writeCloseableValue(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object p1

    return-object p1

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-nez v1, :cond_3

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    if-nez v2, :cond_2

    .line 146
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_findAndAddDynamic(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 149
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 150
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgFlush:Z

    if-eqz p1, :cond_4

    .line 151
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    :cond_4
    return-object p0
.end method

.method public write(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    return-object p0

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgCloseCloseable:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/io/Closeable;

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_writeCloseableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object p1

    return-object p1

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 182
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 185
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgFlush:Z

    if-eqz p1, :cond_3

    .line 186
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    :cond_3
    return-object p0
.end method

.method public writeAll(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/SequenceWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 214
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/SequenceWriter;->write(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public writeAll(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "*>;>(TC;)",
            "Lcom/fasterxml/jackson/databind/SequenceWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 203
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/SequenceWriter;->write(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public writeAll([Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 194
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/SequenceWriter;->write(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
