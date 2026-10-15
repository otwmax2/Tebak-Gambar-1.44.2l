###### Class l3.c (l3.c)
.class final Ll3/c;
.super Ll3/o;
.source "AutoValue_SendRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/c$b;
    }
.end annotation


# instance fields
.field private final a:Ll3/p;

.field private final b:Ljava/lang/String;

.field private final c:Lj3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj3/c<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Lj3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj3/e<",
            "*[B>;"
        }
    .end annotation
.end field

.field private final e:Lj3/b;


# direct methods
.method private constructor <init>(Ll3/p;Ljava/lang/String;Lj3/c;Lj3/e;Lj3/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/p;",
            "Ljava/lang/String;",
            "Lj3/c<",
            "*>;",
            "Lj3/e<",
            "*[B>;",
            "Lj3/b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ll3/o;-><init>()V

    .line 3
    iput-object p1, p0, Ll3/c;->a:Ll3/p;

    .line 4
    iput-object p2, p0, Ll3/c;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Ll3/c;->c:Lj3/c;

    .line 6
    iput-object p4, p0, Ll3/c;->d:Lj3/e;

    .line 7
    iput-object p5, p0, Ll3/c;->e:Lj3/b;

    return-void
.end method

.method synthetic constructor <init>(Ll3/p;Ljava/lang/String;Lj3/c;Lj3/e;Lj3/b;Ll3/c$a;)V
    .registers 7

    .line 1
    invoke-direct/range {p0 .. p5}, Ll3/c;-><init>(Ll3/p;Ljava/lang/String;Lj3/c;Lj3/e;Lj3/b;)V

    return-void
.end method


# virtual methods
.method public b()Lj3/b;
    .registers 2

    .line 1
    iget-object v0, p0, Ll3/c;->e:Lj3/b;

    return-object v0
.end method

.method c()Lj3/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj3/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll3/c;->c:Lj3/c;

    return-object v0
.end method

.method e()Lj3/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj3/e<",
            "*[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll3/c;->d:Lj3/e;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Ll3/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    .line 2
    check-cast p1, Ll3/o;

    .line 3
    iget-object v1, p0, Ll3/c;->a:Ll3/p;

    invoke-virtual {p1}, Ll3/o;->f()Ll3/p;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Ll3/c;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ll3/o;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Ll3/c;->c:Lj3/c;

    .line 5
    invoke-virtual {p1}, Ll3/o;->c()Lj3/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Ll3/c;->d:Lj3/e;

    .line 6
    invoke-virtual {p1}, Ll3/o;->e()Lj3/e;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Ll3/c;->e:Lj3/b;

    .line 7
    invoke-virtual {p1}, Ll3/o;->b()Lj3/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Lj3/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    return v0

    :cond_4a
    return v2
.end method

.method public f()Ll3/p;
    .registers 2

    .line 1
    iget-object v0, p0, Ll3/c;->a:Ll3/p;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ll3/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Ll3/c;->a:Ll3/p;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Ll3/c;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Ll3/c;->c:Lj3/c;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v2, p0, Ll3/c;->d:Lj3/e;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget-object v1, p0, Ll3/c;->e:Lj3/b;

    invoke-virtual {v1}, Lj3/b;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendRequest{transportContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll3/c;->a:Ll3/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll3/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll3/c;->c:Lj3/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll3/c;->d:Lj3/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll3/c;->e:Lj3/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class l3.c.a (l3.c$a)
.class synthetic Ll3/c$a;
.super Ljava/lang/Object;
.source "AutoValue_SendRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class l3.c.b (l3.c$b)
.class final Ll3/c$b;
.super Ll3/o$a;
.source "AutoValue_SendRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ll3/p;

.field private b:Ljava/lang/String;

.field private c:Lj3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj3/c<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Lj3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj3/e<",
            "*[B>;"
        }
    .end annotation
.end field

.field private e:Lj3/b;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ll3/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ll3/o;
    .registers 10

    .line 1
    iget-object v0, p0, Ll3/c$b;->a:Ll3/p;

    const-string v1, ""

    if-nez v0, :cond_17

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transportContext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_17
    iget-object v0, p0, Ll3/c$b;->b:Ljava/lang/String;

    if-nez v0, :cond_2c

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transportName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_2c
    iget-object v0, p0, Ll3/c$b;->c:Lj3/c;

    if-nez v0, :cond_41

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_41
    iget-object v0, p0, Ll3/c$b;->d:Lj3/e;

    if-nez v0, :cond_56

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transformer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_56
    iget-object v0, p0, Ll3/c$b;->e:Lj3/b;

    if-nez v0, :cond_6b

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " encoding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_6b
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 12
    new-instance v0, Ll3/c;

    iget-object v3, p0, Ll3/c$b;->a:Ll3/p;

    iget-object v4, p0, Ll3/c$b;->b:Ljava/lang/String;

    iget-object v5, p0, Ll3/c$b;->c:Lj3/c;

    iget-object v6, p0, Ll3/c$b;->d:Lj3/e;

    iget-object v7, p0, Ll3/c$b;->e:Lj3/b;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ll3/c;-><init>(Ll3/p;Ljava/lang/String;Lj3/c;Lj3/e;Lj3/b;Ll3/c$a;)V

    return-object v0

    .line 13
    :cond_83
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(Lj3/b;)Ll3/o$a;
    .registers 3

    const-string v0, "Null encoding"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ll3/c$b;->e:Lj3/b;

    return-object p0
.end method

.method c(Lj3/c;)Ll3/o$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj3/c<",
            "*>;)",
            "Ll3/o$a;"
        }
    .end annotation

    const-string v0, "Null event"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ll3/c$b;->c:Lj3/c;

    return-object p0
.end method

.method d(Lj3/e;)Ll3/o$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj3/e<",
            "*[B>;)",
            "Ll3/o$a;"
        }
    .end annotation

    const-string v0, "Null transformer"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ll3/c$b;->d:Lj3/e;

    return-object p0
.end method

.method public e(Ll3/p;)Ll3/o$a;
    .registers 3

    const-string v0, "Null transportContext"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ll3/c$b;->a:Ll3/p;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Ll3/o$a;
    .registers 3

    const-string v0, "Null transportName"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ll3/c$b;->b:Ljava/lang/String;

    return-object p0
.end method
