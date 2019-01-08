.class public abstract Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "BeanSerializerBase.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;
.implements Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;
.implements Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;",
        "Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;",
        "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;",
        "Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;"
    }
.end annotation


# static fields
.field protected static final NAME_FOR_OBJECT_REF:Lcom/fasterxml/jackson/databind/PropertyName;

.field protected static final NO_PROPS:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;


# instance fields
.field protected final _anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

.field protected final _filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

.field protected final _objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

.field protected final _propertyFilterId:Ljava/lang/Object;

.field protected final _props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

.field protected final _serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field protected final _typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    const-string v1, "#object-ref"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->NAME_FOR_OBJECT_REF:Lcom/fasterxml/jackson/databind/PropertyName;

    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->NO_PROPS:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 106
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 107
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 109
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 110
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 111
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 112
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 113
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    goto :goto_1

    .line 115
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getTypeId()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 116
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getAnyGetter()Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 117
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getFilterId()Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 118
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getObjectIdWriter()Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 119
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getBeanDescription()Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findExpectedFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    :goto_1
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;)V
    .locals 2

    .line 249
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V
    .locals 1

    .line 141
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;Ljava/lang/Object;)V
    .locals 1

    .line 150
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 151
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 152
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 154
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 155
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 156
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 157
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 158
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
    .locals 2

    .line 257
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-static {v0, p2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->rename([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v0

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-static {v1, p2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->rename([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 169
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 171
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 172
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 173
    array-length v2, v0

    .line 175
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v5, v4

    goto :goto_0

    .line 176
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_3

    .line 179
    aget-object v7, v0, v6

    if-eqz p2, :cond_1

    .line 181
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    .line 184
    :cond_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    .line 186
    aget-object v7, v1, v6

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 189
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-nez v5, :cond_4

    goto :goto_3

    .line 190
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    :goto_3
    iput-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 192
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 193
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 194
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 195
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 196
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
    .locals 1

    .line 127
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 128
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 129
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 131
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 132
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 133
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 134
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 135
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Ljava/util/Set;)V

    return-void
.end method

.method private static final rename([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 4

    if-eqz p0, :cond_3

    .line 263
    array-length v0, p0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    sget-object v0, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    array-length v0, p0

    .line 267
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 269
    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 271
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object p0
.end method


# virtual methods
.method protected final _customTypeId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 667
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected _serializeObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 642
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_customTypeId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    .line 644
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_1

    .line 646
    :cond_1
    invoke-virtual {p4, p1, p2, v1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeCustomTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V

    .line 648
    :goto_1
    invoke-virtual {p5, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->writeAsField(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V

    .line 649
    iget-object p5, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz p5, :cond_2

    .line 650
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_2

    .line 652
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    :goto_2
    if-nez v1, :cond_3

    .line 655
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_3

    .line 657
    :cond_3
    invoke-virtual {p4, p1, p2, v1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeCustomTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method protected final _serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 623
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {p3, p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;

    move-result-object v7

    .line 625
    invoke-virtual {v7, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->writeAsId(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 629
    :cond_0
    invoke-virtual {v7, p1}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->generateId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 630
    iget-boolean v2, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z

    if-eqz v2, :cond_1

    .line 631
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {p1, v1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 635
    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializeObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;)V

    return-void
.end method

.method protected final _serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 594
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {p3, p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;

    move-result-object v1

    .line 596
    invoke-virtual {v1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->writeAsId(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 600
    :cond_0
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->generateId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 601
    iget-boolean v3, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z

    if-eqz v3, :cond_1

    .line 602
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {p1, v2, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void

    :cond_1
    if-eqz p4, :cond_2

    .line 606
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;)V

    .line 608
    :cond_2
    invoke-virtual {v1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->writeAsField(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V

    .line 609
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 610
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0

    .line 612
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    :goto_0
    if-eqz p4, :cond_4

    .line 615
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_4
    return-void
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 809
    :cond_0
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectObjectFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 813
    :cond_1
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;

    move-result-object v0

    .line 814
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 815
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;

    move-result-object p1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object p1

    .line 817
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    array-length v1, v1

    :goto_0
    if-ge v2, v1, :cond_7

    .line 818
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v3, v3, v2

    invoke-interface {p1, v3, p2, v0}, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 821
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-eqz p1, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;

    move-result-object v3

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 825
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    goto :goto_2

    .line 827
    :cond_5
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 830
    :goto_2
    array-length v1, p1

    :goto_3
    if-ge v2, v1, :cond_7

    .line 831
    aget-object v3, p1, v2

    if-eqz v3, :cond_6

    .line 833
    invoke-virtual {v3, p2, v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method protected abstract asArraySerializer()Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 401
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, v1

    .line 404
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v3

    .line 408
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->handledType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, p1, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findFormatOverrides(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 410
    invoke-virtual {v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasShape()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 411
    invoke-virtual {v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v5

    .line 413
    sget-object v6, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq v5, v6, :cond_3

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq v5, v6, :cond_3

    .line 414
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 415
    sget-object v6, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape:[I

    invoke-virtual {v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 421
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v2

    invoke-static {v1, v2, v0, v4}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;

    move-result-object v0

    .line 424
    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p1

    return-object p1

    :cond_2
    move-object v5, v1

    .line 430
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    if-eqz v2, :cond_c

    .line 436
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIgnorals(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 438
    invoke-virtual {v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForSerialization()Ljava/util/Set;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v1

    .line 440
    :goto_3
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v6

    if-nez v6, :cond_5

    if-eqz v3, :cond_a

    .line 444
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    sget-object v6, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->NAME_FOR_OBJECT_REF:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-direct {v3, v6, v1, v1, v1}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v3

    .line 446
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getAlwaysAsId()Z

    move-result v3

    invoke-virtual {v6, v3}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->withAlwaysAsId(Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v3

    goto/16 :goto_5

    .line 455
    :cond_5
    invoke-virtual {v0, v2, v6}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v3

    .line 457
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getGeneratorType()Ljava/lang/Class;

    move-result-object v6

    .line 458
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 459
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v8

    const-class v9, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v8, v7, v9}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    .line 461
    const-class v9, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;

    if-ne v6, v9, :cond_9

    .line 462
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    .line 465
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    array-length v9, v7

    const/4 v7, 0x0

    :goto_4
    if-ne v7, v9, :cond_6

    .line 467
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Object Id definition for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": can not find property with name \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 470
    :cond_6
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v10, v10, v7

    .line 471
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-lez v7, :cond_7

    .line 477
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    const/4 v11, 0x1

    invoke-static {v6, v8, v9, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aput-object v10, v6, v8

    .line 479
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-eqz v6, :cond_7

    .line 480
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v6, v6, v7

    .line 481
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iget-object v12, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-static {v9, v8, v12, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aput-object v6, v7, v8

    .line 488
    :cond_7
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 489
    new-instance v7, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    invoke-direct {v7, v3, v10}, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;-><init>(Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 490
    move-object v8, v1

    check-cast v8, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getAlwaysAsId()Z

    move-result v3

    invoke-static {v6, v8, v7, v3}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v3

    goto :goto_5

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 492
    :cond_9
    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-result-object v6

    .line 493
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v8

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getAlwaysAsId()Z

    move-result v3

    invoke-static {v7, v8, v6, v3}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v3

    .line 499
    :cond_a
    :goto_5
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 502
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move-object v1, v0

    goto :goto_6

    :cond_c
    move-object v4, v1

    :cond_d
    :goto_6
    if-eqz v3, :cond_e

    .line 510
    iget-object v0, v3, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->idType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p1

    .line 511
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->withSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object p1

    .line 512
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    if-eq p1, p2, :cond_e

    .line 513
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object p1

    goto :goto_7

    :cond_e
    move-object p1, p0

    :goto_7
    if-eqz v4, :cond_f

    .line 517
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_f

    .line 518
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withIgnorals(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object p1

    :cond_f
    if-eqz v1, :cond_10

    .line 521
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object p1

    :cond_10
    if-nez v5, :cond_11

    .line 524
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 526
    :cond_11
    sget-object p2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v5, p2, :cond_12

    .line 527
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->asArraySerializer()Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object p1

    return-object p1

    :cond_12
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected findConvertingSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
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

    .line 377
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 381
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;

    move-result-object v0

    .line 384
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/fasterxml/jackson/databind/util/Converter;->getOutputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 386
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 388
    :goto_0
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    invoke-direct {p1, v0, v2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p2, "object"

    const/4 v0, 0x1

    .line 767
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p2

    .line 770
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    const-class v1, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;

    if-eqz v0, :cond_0

    .line 772
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;->id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "id"

    .line 774
    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 780
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 783
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v2

    :cond_1
    const/4 v1, 0x0

    .line 788
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 789
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v3, v3, v1

    if-nez v2, :cond_2

    .line 791
    invoke-virtual {v3, v0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_1

    .line 793
    :cond_2
    invoke-interface {v2, v3, v0, p1}, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "properties"

    .line 797
    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    return-object p2
.end method

.method public properties()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/fasterxml/jackson/databind/ser/PropertyWriter;",
            ">;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    array-length v0, v0

    .line 292
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    array-length v2, v2

    :goto_1
    if-ge v1, v2, :cond_8

    .line 293
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v3, v3, v1

    .line 295
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->willSuppressNulls()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->hasNullSerializer()Z

    move-result v4

    if-nez v4, :cond_1

    .line 296
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullValueSerializer(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 298
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    if-ge v1, v0, :cond_1

    .line 301
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v5, v5, v1

    if-eqz v5, :cond_1

    .line 303
    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 309
    :cond_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->hasSerializer()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 313
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findConvertingSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    if-nez v4, :cond_6

    .line 316
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getSerializationType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    if-nez v4, :cond_4

    .line 324
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 325
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->isFinal()Z

    move-result v5

    if-nez v5, :cond_4

    .line 326
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeCount()I

    move-result v5

    if-lez v5, :cond_7

    .line 327
    :cond_3
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->setNonTrivialBaseType(Lcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_3

    .line 332
    :cond_4
    invoke-virtual {p1, v4, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    .line 336
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 337
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-eqz v4, :cond_5

    .line 340
    instance-of v6, v5, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    if-eqz v6, :cond_5

    .line 343
    check-cast v5, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;->withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, v5

    .line 349
    :cond_6
    :goto_2
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    if-ge v1, v0, :cond_7

    .line 352
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v3, v3, v1

    if-eqz v3, :cond_7

    .line 354
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 360
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    if-eqz v0, :cond_9

    .line 362
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    :cond_9
    return-void
.end method

.method public abstract serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    goto :goto_0

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    :goto_0
    const/4 v1, 0x0

    .line 687
    :try_start_0
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 688
    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    .line 690
    invoke-virtual {v3, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 693
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    if-eqz v2, :cond_5

    .line 694
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    invoke-virtual {v2, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->getAndSerialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p3

    .line 706
    new-instance v2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const-string v3, "Infinite recursion (StackOverflowError)"

    invoke-direct {v2, p2, v3, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 708
    array-length p2, v0

    if-ne v1, p2, :cond_3

    const-string p2, "[anySetter]"

    goto :goto_2

    :cond_3
    aget-object p2, v0, v1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object p2

    .line 709
    :goto_2
    new-instance p3, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-direct {p3, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;->prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V

    .line 710
    throw v2

    :catch_1
    move-exception p2

    .line 697
    array-length v2, v0

    if-ne v1, v2, :cond_4

    const-string v0, "[anySetter]"

    goto :goto_3

    :cond_4
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 698
    :goto_3
    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void
.end method

.method protected serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    goto :goto_0

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 732
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    invoke-virtual {p0, p3, v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 735
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 740
    :try_start_0
    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 741
    aget-object v4, v0, v2

    if-eqz v4, :cond_2

    .line 743
    invoke-interface {v1, p1, p2, p3, v4}, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 746
    :cond_3
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    if-eqz v3, :cond_6

    .line 747
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    invoke-virtual {v3, p1, p2, p3, v1}, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->getAndFilter(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p3

    .line 755
    new-instance v1, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const-string v3, "Infinite recursion (StackOverflowError)"

    invoke-direct {v1, p2, v3, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 756
    array-length p2, v0

    if-ne v2, p2, :cond_4

    const-string p2, "[anySetter]"

    goto :goto_2

    :cond_4
    aget-object p2, v0, v2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object p2

    .line 757
    :goto_2
    new-instance p3, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-direct {p3, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;->prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V

    .line 758
    throw v1

    :catch_1
    move-exception p2

    .line 750
    array-length v1, v0

    if-ne v2, v1, :cond_5

    const-string v0, "[anySetter]"

    goto :goto_3

    :cond_5
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 751
    :goto_3
    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCurrentValue(Ljava/lang/Object;)V

    .line 567
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_customTypeId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 573
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_1

    .line 575
    :cond_2
    invoke-virtual {p4, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeCustomTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V

    .line 577
    :goto_1
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCurrentValue(Ljava/lang/Object;)V

    .line 578
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 579
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_2

    .line 581
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    :goto_2
    if-nez v0, :cond_4

    .line 584
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_3

    .line 586
    :cond_4
    invoke-virtual {p4, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeCustomTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public usesObjectId()Z
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object p1

    return-object p1
.end method

.method public abstract withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method

.method protected abstract withIgnorals(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;"
        }
    .end annotation
.end method

.method protected withIgnorals([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withIgnorals(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object p1

    return-object p1
.end method

.method public abstract withObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method
