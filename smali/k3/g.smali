###### Class k3.g (k3.g)
.class final Lk3/g;
.super Lk3/m;
.source "AutoValue_LogRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk3/g$b;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Lk3/k;

.field private final d:Ljava/lang/Integer;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk3/l;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lk3/p;


# direct methods
.method private constructor <init>(JJLk3/k;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lk3/p;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lk3/k;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lk3/l;",
            ">;",
            "Lk3/p;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lk3/m;-><init>()V

    .line 3
    iput-wide p1, p0, Lk3/g;->a:J

    .line 4
    iput-wide p3, p0, Lk3/g;->b:J

    .line 5
    iput-object p5, p0, Lk3/g;->c:Lk3/k;

    .line 6
    iput-object p6, p0, Lk3/g;->d:Ljava/lang/Integer;

    .line 7
    iput-object p7, p0, Lk3/g;->e:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lk3/g;->f:Ljava/util/List;

    .line 9
    iput-object p9, p0, Lk3/g;->g:Lk3/p;

    return-void
.end method

.method synthetic constructor <init>(JJLk3/k;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lk3/p;Lk3/g$a;)V
    .registers 11

    .line 1
    invoke-direct/range {p0 .. p9}, Lk3/g;-><init>(JJLk3/k;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lk3/p;)V

    return-void
.end method


# virtual methods
.method public b()Lk3/k;
    .registers 2

    .line 1
    iget-object v0, p0, Lk3/g;->c:Lk3/k;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk3/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk3/g;->f:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lk3/g;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lk3/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lk3/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_8b

    .line 2
    check-cast p1, Lk3/m;

    .line 3
    iget-wide v3, p0, Lk3/g;->a:J

    invoke-virtual {p1}, Lk3/m;->g()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_89

    iget-wide v3, p0, Lk3/g;->b:J

    .line 4
    invoke-virtual {p1}, Lk3/m;->h()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_89

    iget-object v1, p0, Lk3/g;->c:Lk3/k;

    if-nez v1, :cond_2a

    .line 5
    invoke-virtual {p1}, Lk3/m;->b()Lk3/k;

    move-result-object v1

    if-nez v1, :cond_89

    goto :goto_34

    :cond_2a
    invoke-virtual {p1}, Lk3/m;->b()Lk3/k;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    :goto_34
    iget-object v1, p0, Lk3/g;->d:Ljava/lang/Integer;

    if-nez v1, :cond_3f

    .line 6
    invoke-virtual {p1}, Lk3/m;->d()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_89

    goto :goto_49

    :cond_3f
    invoke-virtual {p1}, Lk3/m;->d()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    :goto_49
    iget-object v1, p0, Lk3/g;->e:Ljava/lang/String;

    if-nez v1, :cond_54

    .line 7
    invoke-virtual {p1}, Lk3/m;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_89

    goto :goto_5e

    :cond_54
    invoke-virtual {p1}, Lk3/m;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    :goto_5e
    iget-object v1, p0, Lk3/g;->f:Ljava/util/List;

    if-nez v1, :cond_69

    .line 8
    invoke-virtual {p1}, Lk3/m;->c()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_89

    goto :goto_73

    :cond_69
    invoke-virtual {p1}, Lk3/m;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    :goto_73
    iget-object v1, p0, Lk3/g;->g:Lk3/p;

    if-nez v1, :cond_7e

    .line 9
    invoke-virtual {p1}, Lk3/m;->f()Lk3/p;

    move-result-object p1

    if-nez p1, :cond_89

    goto :goto_8a

    :cond_7e
    invoke-virtual {p1}, Lk3/m;->f()Lk3/p;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_89

    goto :goto_8a

    :cond_89
    const/4 v0, 0x0

    :goto_8a
    return v0

    :cond_8b
    return v2
.end method

.method public f()Lk3/p;
    .registers 2

    .line 1
    iget-object v0, p0, Lk3/g;->g:Lk3/p;

    return-object v0
.end method

.method public g()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lk3/g;->a:J

    return-wide v0
.end method

.method public h()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lk3/g;->b:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    .line 1
    iget-wide v0, p0, Lk3/g;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    .line 2
    iget-wide v3, p0, Lk3/g;->b:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v2, v3

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 3
    iget-object v2, p0, Lk3/g;->c:Lk3/k;

    const/4 v3, 0x0

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_22

    :cond_1e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_22
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 4
    iget-object v2, p0, Lk3/g;->d:Ljava/lang/Integer;

    if-nez v2, :cond_2b

    const/4 v2, 0x0

    goto :goto_2f

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2f
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 5
    iget-object v2, p0, Lk3/g;->e:Ljava/lang/String;

    if-nez v2, :cond_38

    const/4 v2, 0x0

    goto :goto_3c

    :cond_38
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3c
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 6
    iget-object v2, p0, Lk3/g;->f:Ljava/util/List;

    if-nez v2, :cond_45

    const/4 v2, 0x0

    goto :goto_49

    :cond_45
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_49
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 7
    iget-object v0, p0, Lk3/g;->g:Lk3/p;

    if-nez v0, :cond_51

    goto :goto_55

    :cond_51
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_55
    xor-int v0, v1, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogRequest{requestTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lk3/g;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestUptimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lk3/g;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", clientInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk3/g;->c:Lk3/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk3/g;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logSourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk3/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk3/g;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", qosTier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk3/g;->g:Lk3/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class k3.g.a (k3.g$a)
.class synthetic Lk3/g$a;
.super Ljava/lang/Object;
.source "AutoValue_LogRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class k3.g.b (k3.g$b)
.class final Lk3/g$b;
.super Lk3/m$a;
.source "AutoValue_LogRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Long;

.field private c:Lk3/k;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk3/l;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lk3/p;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lk3/m$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lk3/m;
    .registers 14

    .line 1
    iget-object v0, p0, Lk3/g$b;->a:Ljava/lang/Long;

    const-string v1, ""

    if-nez v0, :cond_17

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requestTimeMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_17
    iget-object v0, p0, Lk3/g$b;->b:Ljava/lang/Long;

    if-nez v0, :cond_2c

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requestUptimeMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 6
    new-instance v0, Lk3/g;

    iget-object v1, p0, Lk3/g$b;->a:Ljava/lang/Long;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lk3/g$b;->b:Ljava/lang/Long;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lk3/g$b;->c:Lk3/k;

    iget-object v8, p0, Lk3/g$b;->d:Ljava/lang/Integer;

    iget-object v9, p0, Lk3/g$b;->e:Ljava/lang/String;

    iget-object v10, p0, Lk3/g$b;->f:Ljava/util/List;

    iget-object v11, p0, Lk3/g$b;->g:Lk3/p;

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lk3/g;-><init>(JJLk3/k;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lk3/p;Lk3/g$a;)V

    return-object v0

    .line 9
    :cond_50
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

.method public b(Lk3/k;)Lk3/m$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lk3/g$b;->c:Lk3/k;

    return-object p0
.end method

.method public c(Ljava/util/List;)Lk3/m$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk3/l;",
            ">;)",
            "Lk3/m$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lk3/g$b;->f:Ljava/util/List;

    return-object p0
.end method

.method d(Ljava/lang/Integer;)Lk3/m$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lk3/g$b;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method e(Ljava/lang/String;)Lk3/m$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lk3/g$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f(Lk3/p;)Lk3/m$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lk3/g$b;->g:Lk3/p;

    return-object p0
.end method

.method public g(J)Lk3/m$a;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lk3/g$b;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public h(J)Lk3/m$a;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lk3/g$b;->b:Ljava/lang/Long;

    return-object p0
.end method
