###### Class d7.a (d7.a)
.class public final Ld7/a;
.super Lcom/google/gson/w;
.source "ArrayTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/w<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/google/gson/x;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/gson/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/w<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ld7/a$a;

    invoke-direct {v0}, Ld7/a$a;-><init>()V

    sput-object v0, Ld7/a;->c:Lcom/google/gson/x;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/f;Lcom/google/gson/w;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            "Lcom/google/gson/w<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/gson/w;-><init>()V

    .line 2
    new-instance v0, Ld7/m;

    invoke-direct {v0, p1, p2, p3}, Ld7/m;-><init>(Lcom/google/gson/f;Lcom/google/gson/w;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Ld7/a;->b:Lcom/google/gson/w;

    .line 3
    iput-object p3, p0, Ld7/a;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public b(Lh7/a;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lh7/a;->x()Lh7/b;

    move-result-object v0

    sget-object v1, Lh7/b;->w:Lh7/b;

    if-ne v0, v1, :cond_d

    .line 2
    invoke-virtual {p1}, Lh7/a;->t()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lh7/a;->b()V

    .line 5
    :goto_15
    invoke-virtual {p1}, Lh7/a;->j()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 6
    iget-object v1, p0, Ld7/a;->b:Lcom/google/gson/w;

    invoke-virtual {v1, p1}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 8
    :cond_25
    invoke-virtual {p1}, Lh7/a;->g()V

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 10
    iget-object v1, p0, Ld7/a;->a:Ljava/lang/Class;

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_33
    if-ge v2, p1, :cond_3f

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_3f
    return-object v1
.end method

.method public d(Lh7/c;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    .line 1
    invoke-virtual {p1}, Lh7/c;->n()Lh7/c;

    return-void

    .line 2
    :cond_6
    invoke-virtual {p1}, Lh7/c;->d()Lh7/c;

    const/4 v0, 0x0

    .line 3
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_e
    if-ge v0, v1, :cond_1c

    .line 4
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, p0, Ld7/a;->b:Lcom/google/gson/w;

    invoke-virtual {v3, p1, v2}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 6
    :cond_1c
    invoke-virtual {p1}, Lh7/c;->g()Lh7/c;

    return-void
.end method

###### Class d7.a.C0144a (d7.a$a)
.class Ld7/a$a;
.super Ljava/lang/Object;
.source "ArrayTypeAdapter.java"

# interfaces
.implements Lcom/google/gson/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    invoke-virtual {p2}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 2
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_17

    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_15

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_15
    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_17
    invoke-static {p2}, Lc7/b;->g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 4
    invoke-static {p2}, Lg7/a;->get(Ljava/lang/reflect/Type;)Lg7/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/f;->m(Lg7/a;)Lcom/google/gson/w;

    move-result-object v0

    .line 5
    new-instance v1, Ld7/a;

    .line 6
    invoke-static {p2}, Lc7/b;->k(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v1, p1, v0, p2}, Ld7/a;-><init>(Lcom/google/gson/f;Lcom/google/gson/w;Ljava/lang/Class;)V

    return-object v1
.end method
