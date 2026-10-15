###### Class d7.m (d7.m)
.class final Ld7/m;
.super Lcom/google/gson/w;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/w<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/f;

.field private final b:Lcom/google/gson/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/gson/f;Lcom/google/gson/w;Ljava/lang/reflect/Type;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            "Lcom/google/gson/w<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/gson/w;-><init>()V

    .line 2
    iput-object p1, p0, Ld7/m;->a:Lcom/google/gson/f;

    .line 3
    iput-object p2, p0, Ld7/m;->b:Lcom/google/gson/w;

    .line 4
    iput-object p3, p0, Ld7/m;->c:Ljava/lang/reflect/Type;

    return-void
.end method

.method private e(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .registers 4

    if-eqz p2, :cond_12

    .line 1
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_e

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_e

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_12

    .line 2
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_12
    return-object p1
.end method


# virtual methods
.method public b(Lh7/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld7/m;->b:Lcom/google/gson/w;

    invoke-virtual {v0, p1}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lh7/c;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld7/m;->b:Lcom/google/gson/w;

    .line 2
    iget-object v1, p0, Ld7/m;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Ld7/m;->e(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3
    iget-object v2, p0, Ld7/m;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_22

    .line 4
    iget-object v0, p0, Ld7/m;->a:Lcom/google/gson/f;

    invoke-static {v1}, Lg7/a;->get(Ljava/lang/reflect/Type;)Lg7/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->m(Lg7/a;)Lcom/google/gson/w;

    move-result-object v0

    .line 5
    instance-of v1, v0, Ld7/i$b;

    if-nez v1, :cond_1b

    goto :goto_22

    .line 6
    :cond_1b
    iget-object v1, p0, Ld7/m;->b:Lcom/google/gson/w;

    instance-of v2, v1, Ld7/i$b;

    if-nez v2, :cond_22

    move-object v0, v1

    .line 7
    :cond_22
    :goto_22
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    return-void
.end method
