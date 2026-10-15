###### Class d7.d (d7.d)
.class public final Ld7/d;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/x;


# instance fields
.field private final o:Lc7/c;


# direct methods
.method public constructor <init>(Lc7/c;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld7/d;->o:Lc7/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/f;Lg7/a;)Lcom/google/gson/w;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/f;",
            "Lg7/a<",
            "TT;>;)",
            "Lcom/google/gson/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lg7/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Lb7/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lb7/b;

    if-nez v0, :cond_10

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_10
    iget-object v1, p0, Ld7/d;->o:Lc7/c;

    invoke-virtual {p0, v1, p1, p2, v0}, Ld7/d;->b(Lc7/c;Lcom/google/gson/f;Lg7/a;Lb7/b;)Lcom/google/gson/w;

    move-result-object p1

    return-object p1
.end method

.method b(Lc7/c;Lcom/google/gson/f;Lg7/a;Lb7/b;)Lcom/google/gson/w;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/c;",
            "Lcom/google/gson/f;",
            "Lg7/a<",
            "*>;",
            "Lb7/b;",
            ")",
            "Lcom/google/gson/w<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Lb7/b;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lg7/a;->get(Ljava/lang/Class;)Lg7/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc7/c;->a(Lg7/a;)Lc7/i;

    move-result-object p1

    invoke-interface {p1}, Lc7/i;->a()Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/google/gson/w;

    if-eqz v0, :cond_17

    .line 3
    check-cast p1, Lcom/google/gson/w;

    goto :goto_75

    .line 4
    :cond_17
    instance-of v0, p1, Lcom/google/gson/x;

    if-eqz v0, :cond_22

    .line 5
    check-cast p1, Lcom/google/gson/x;

    invoke-interface {p1, p2, p3}, Lcom/google/gson/x;->a(Lcom/google/gson/f;Lg7/a;)Lcom/google/gson/w;

    move-result-object p1

    goto :goto_75

    .line 6
    :cond_22
    instance-of v0, p1, Lcom/google/gson/t;

    if-nez v0, :cond_5b

    instance-of v1, p1, Lcom/google/gson/k;

    if-eqz v1, :cond_2b

    goto :goto_5b

    .line 7
    :cond_2b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid attempt to bind an instance of "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a @JsonAdapter for "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lg7/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5b
    :goto_5b
    const/4 v1, 0x0

    if-eqz v0, :cond_63

    .line 9
    move-object v0, p1

    check-cast v0, Lcom/google/gson/t;

    move-object v3, v0

    goto :goto_64

    :cond_63
    move-object v3, v1

    .line 10
    :goto_64
    instance-of v0, p1, Lcom/google/gson/k;

    if-eqz v0, :cond_6b

    .line 11
    move-object v1, p1

    check-cast v1, Lcom/google/gson/k;

    :cond_6b
    move-object v4, v1

    .line 12
    new-instance p1, Ld7/l;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Ld7/l;-><init>(Lcom/google/gson/t;Lcom/google/gson/k;Lcom/google/gson/f;Lg7/a;Lcom/google/gson/x;)V

    :goto_75
    if-eqz p1, :cond_81

    .line 13
    invoke-interface {p4}, Lb7/b;->nullSafe()Z

    move-result p2

    if-eqz p2, :cond_81

    .line 14
    invoke-virtual {p1}, Lcom/google/gson/w;->a()Lcom/google/gson/w;

    move-result-object p1

    :cond_81
    return-object p1
.end method
