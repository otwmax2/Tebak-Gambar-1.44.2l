###### Class d7.f (d7.f)
.class public final Ld7/f;
.super Lh7/c;
.source "JsonTreeWriter.java"


# static fields
.field private static final C:Ljava/io/Writer;

.field private static final D:Lcom/google/gson/r;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/google/gson/l;

.field private final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ld7/f$a;

    invoke-direct {v0}, Ld7/f$a;-><init>()V

    sput-object v0, Ld7/f;->C:Ljava/io/Writer;

    .line 2
    new-instance v0, Lcom/google/gson/r;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/google/gson/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld7/f;->D:Lcom/google/gson/r;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Ld7/f;->C:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lh7/c;-><init>(Ljava/io/Writer;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld7/f;->z:Ljava/util/List;

    .line 3
    sget-object v0, Lcom/google/gson/n;->a:Lcom/google/gson/n;

    iput-object v0, p0, Ld7/f;->B:Lcom/google/gson/l;

    return-void
.end method

.method private G()Lcom/google/gson/l;
    .registers 3

    .line 1
    iget-object v0, p0, Ld7/f;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/l;

    return-object v0
.end method

.method private H(Lcom/google/gson/l;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ld7/f;->A:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/l;->q()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lh7/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3
    :cond_10
    invoke-direct {p0}, Ld7/f;->G()Lcom/google/gson/l;

    move-result-object v0

    check-cast v0, Lcom/google/gson/o;

    .line 4
    iget-object v1, p0, Ld7/f;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    :cond_1b
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Ld7/f;->A:Ljava/lang/String;

    goto :goto_37

    .line 6
    :cond_1f
    iget-object v0, p0, Ld7/f;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 7
    iput-object p1, p0, Ld7/f;->B:Lcom/google/gson/l;

    goto :goto_37

    .line 8
    :cond_2a
    invoke-direct {p0}, Ld7/f;->G()Lcom/google/gson/l;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/google/gson/i;

    if-eqz v1, :cond_38

    .line 10
    check-cast v0, Lcom/google/gson/i;

    invoke-virtual {v0, p1}, Lcom/google/gson/i;->t(Lcom/google/gson/l;)V

    :goto_37
    return-void

    .line 11
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lh7/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    .line 1
    invoke-virtual {p0}, Ld7/f;->n()Lh7/c;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    new-instance v0, Lcom/google/gson/r;

    invoke-direct {v0, p1}, Lcom/google/gson/r;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ld7/f;->H(Lcom/google/gson/l;)V

    return-object p0
.end method

.method public C(Z)Lh7/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/r;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/r;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Ld7/f;->H(Lcom/google/gson/l;)V

    return-object p0
.end method

.method public F()Lcom/google/gson/l;
    .registers 4

    .line 1
    iget-object v0, p0, Ld7/f;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Ld7/f;->B:Lcom/google/gson/l;

    return-object v0

    .line 3
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld7/f;->z:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld7/f;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Ld7/f;->z:Ljava/util/List;

    sget-object v1, Ld7/f;->D:Lcom/google/gson/r;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lh7/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/i;

    invoke-direct {v0}, Lcom/google/gson/i;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Ld7/f;->H(Lcom/google/gson/l;)V

    .line 3
    iget-object v1, p0, Ld7/f;->z:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e()Lh7/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0}, Lcom/google/gson/o;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Ld7/f;->H(Lcom/google/gson/l;)V

    .line 3
    iget-object v1, p0, Ld7/f;->z:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public g()Lh7/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld7/f;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Ld7/f;->A:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 2
    invoke-direct {p0}, Ld7/f;->G()Lcom/google/gson/l;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lcom/google/gson/i;

    if-eqz v0, :cond_20

    .line 4
    iget-object v0, p0, Ld7/f;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public h()Lh7/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld7/f;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Ld7/f;->A:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 2
    invoke-direct {p0}, Ld7/f;->G()Lcom/google/gson/l;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lcom/google/gson/o;

    if-eqz v0, :cond_20

    .line 4
    iget-object v0, p0, Ld7/f;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public l(Ljava/lang/String;)Lh7/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "name == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ld7/f;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Ld7/f;->A:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 3
    invoke-direct {p0}, Ld7/f;->G()Lcom/google/gson/l;

    move-result-object v0

    .line 4
    instance-of v0, v0, Lcom/google/gson/o;

    if-eqz v0, :cond_1c

    .line 5
    iput-object p1, p0, Ld7/f;->A:Ljava/lang/String;

    return-object p0

    .line 6
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 7
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public n()Lh7/c;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/gson/n;->a:Lcom/google/gson/n;

    invoke-direct {p0, v0}, Ld7/f;->H(Lcom/google/gson/l;)V

    return-object p0
.end method

.method public x(J)Lh7/c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/r;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/r;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Ld7/f;->H(Lcom/google/gson/l;)V

    return-object p0
.end method

.method public y(Ljava/lang/Boolean;)Lh7/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    .line 1
    invoke-virtual {p0}, Ld7/f;->n()Lh7/c;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    new-instance v0, Lcom/google/gson/r;

    invoke-direct {v0, p1}, Lcom/google/gson/r;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Ld7/f;->H(Lcom/google/gson/l;)V

    return-object p0
.end method

.method public z(Ljava/lang/Number;)Lh7/c;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    .line 1
    invoke-virtual {p0}, Ld7/f;->n()Lh7/c;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-virtual {p0}, Lh7/c;->k()Z

    move-result v0

    if-nez v0, :cond_35

    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_35

    .line 5
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_35
    :goto_35
    new-instance v0, Lcom/google/gson/r;

    invoke-direct {v0, p1}, Lcom/google/gson/r;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Ld7/f;->H(Lcom/google/gson/l;)V

    return-object p0
.end method

###### Class d7.f.a (d7.f$a)
.class Ld7/f$a;
.super Ljava/io/Writer;
.source "JsonTreeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public write([CII)V
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
