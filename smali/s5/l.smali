###### Class s5.l (s5.l)
.class final Ls5/l;
.super Ls5/f0$e$d;
.source "AutoValue_CrashlyticsReport_Session_Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/l$b;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ls5/f0$e$d$a;

.field private final d:Ls5/f0$e$d$c;

.field private final e:Ls5/f0$e$d$d;

.field private final f:Ls5/f0$e$d$f;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ls5/f0$e$d$a;Ls5/f0$e$d$c;Ls5/f0$e$d$d;Ls5/f0$e$d$f;)V
    .registers 8

    .line 2
    invoke-direct {p0}, Ls5/f0$e$d;-><init>()V

    .line 3
    iput-wide p1, p0, Ls5/l;->a:J

    .line 4
    iput-object p3, p0, Ls5/l;->b:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Ls5/l;->c:Ls5/f0$e$d$a;

    .line 6
    iput-object p5, p0, Ls5/l;->d:Ls5/f0$e$d$c;

    .line 7
    iput-object p6, p0, Ls5/l;->e:Ls5/f0$e$d$d;

    .line 8
    iput-object p7, p0, Ls5/l;->f:Ls5/f0$e$d$f;

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ls5/f0$e$d$a;Ls5/f0$e$d$c;Ls5/f0$e$d$d;Ls5/f0$e$d$f;Ls5/l$a;)V
    .registers 9

    .line 1
    invoke-direct/range {p0 .. p7}, Ls5/l;-><init>(JLjava/lang/String;Ls5/f0$e$d$a;Ls5/f0$e$d$c;Ls5/f0$e$d$d;Ls5/f0$e$d$f;)V

    return-void
.end method


# virtual methods
.method public b()Ls5/f0$e$d$a;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/l;->c:Ls5/f0$e$d$a;

    return-object v0
.end method

.method public c()Ls5/f0$e$d$c;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/l;->d:Ls5/f0$e$d$c;

    return-object v0
.end method

.method public d()Ls5/f0$e$d$d;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/l;->e:Ls5/f0$e$d$d;

    return-object v0
.end method

.method public e()Ls5/f0$e$d$f;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/l;->f:Ls5/f0$e$d$f;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Ls5/f0$e$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_66

    .line 2
    check-cast p1, Ls5/f0$e$d;

    .line 3
    iget-wide v3, p0, Ls5/l;->a:J

    invoke-virtual {p1}, Ls5/f0$e$d;->f()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_64

    iget-object v1, p0, Ls5/l;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ls5/f0$e$d;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Ls5/l;->c:Ls5/f0$e$d$a;

    .line 5
    invoke-virtual {p1}, Ls5/f0$e$d;->b()Ls5/f0$e$d$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Ls5/l;->d:Ls5/f0$e$d$c;

    .line 6
    invoke-virtual {p1}, Ls5/f0$e$d;->c()Ls5/f0$e$d$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Ls5/l;->e:Ls5/f0$e$d$d;

    if-nez v1, :cond_44

    .line 7
    invoke-virtual {p1}, Ls5/f0$e$d;->d()Ls5/f0$e$d$d;

    move-result-object v1

    if-nez v1, :cond_64

    goto :goto_4e

    :cond_44
    invoke-virtual {p1}, Ls5/f0$e$d;->d()Ls5/f0$e$d$d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    :goto_4e
    iget-object v1, p0, Ls5/l;->f:Ls5/f0$e$d$f;

    if-nez v1, :cond_59

    .line 8
    invoke-virtual {p1}, Ls5/f0$e$d;->e()Ls5/f0$e$d$f;

    move-result-object p1

    if-nez p1, :cond_64

    goto :goto_65

    :cond_59
    invoke-virtual {p1}, Ls5/f0$e$d;->e()Ls5/f0$e$d$f;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_64

    goto :goto_65

    :cond_64
    const/4 v0, 0x0

    :goto_65
    return v0

    :cond_66
    return v2
.end method

.method public f()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ls5/l;->a:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ls5/f0$e$d$b;
    .registers 3

    .line 1
    new-instance v0, Ls5/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls5/l$b;-><init>(Ls5/f0$e$d;Ls5/l$a;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget-wide v0, p0, Ls5/l;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    .line 2
    iget-object v2, p0, Ls5/l;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 3
    iget-object v2, p0, Ls5/l;->c:Ls5/f0$e$d$a;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 4
    iget-object v2, p0, Ls5/l;->d:Ls5/f0$e$d$c;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 5
    iget-object v2, p0, Ls5/l;->e:Ls5/f0$e$d$d;

    const/4 v3, 0x0

    if-nez v2, :cond_30

    const/4 v2, 0x0

    goto :goto_34

    :cond_30
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_34
    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 6
    iget-object v0, p0, Ls5/l;->f:Ls5/f0$e$d$f;

    if-nez v0, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_40
    xor-int v0, v1, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ls5/l;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/l;->c:Ls5/f0$e$d$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/l;->d:Ls5/f0$e$d$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", log="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/l;->e:Ls5/f0$e$d$d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rollouts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/l;->f:Ls5/f0$e$d$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class s5.l.a (s5.l$a)
.class synthetic Ls5/l$a;
.super Ljava/lang/Object;
.source "AutoValue_CrashlyticsReport_Session_Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class s5.l.b (s5.l$b)
.class final Ls5/l$b;
.super Ls5/f0$e$d$b;
.source "AutoValue_CrashlyticsReport_Session_Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/String;

.field private c:Ls5/f0$e$d$a;

.field private d:Ls5/f0$e$d$c;

.field private e:Ls5/f0$e$d$d;

.field private f:Ls5/f0$e$d$f;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ls5/f0$e$d$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Ls5/f0$e$d;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ls5/f0$e$d$b;-><init>()V

    .line 4
    invoke-virtual {p1}, Ls5/f0$e$d;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ls5/l$b;->a:Ljava/lang/Long;

    .line 5
    invoke-virtual {p1}, Ls5/f0$e$d;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ls5/l$b;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Ls5/f0$e$d;->b()Ls5/f0$e$d$a;

    move-result-object v0

    iput-object v0, p0, Ls5/l$b;->c:Ls5/f0$e$d$a;

    .line 7
    invoke-virtual {p1}, Ls5/f0$e$d;->c()Ls5/f0$e$d$c;

    move-result-object v0

    iput-object v0, p0, Ls5/l$b;->d:Ls5/f0$e$d$c;

    .line 8
    invoke-virtual {p1}, Ls5/f0$e$d;->d()Ls5/f0$e$d$d;

    move-result-object v0

    iput-object v0, p0, Ls5/l$b;->e:Ls5/f0$e$d$d;

    .line 9
    invoke-virtual {p1}, Ls5/f0$e$d;->e()Ls5/f0$e$d$f;

    move-result-object p1

    iput-object p1, p0, Ls5/l$b;->f:Ls5/f0$e$d$f;

    return-void
.end method

.method synthetic constructor <init>(Ls5/f0$e$d;Ls5/l$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ls5/l$b;-><init>(Ls5/f0$e$d;)V

    return-void
.end method


# virtual methods
.method public a()Ls5/f0$e$d;
    .registers 12

    .line 1
    iget-object v0, p0, Ls5/l$b;->a:Ljava/lang/Long;

    const-string v1, ""

    if-nez v0, :cond_17

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_17
    iget-object v0, p0, Ls5/l$b;->b:Ljava/lang/String;

    if-nez v0, :cond_2c

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_2c
    iget-object v0, p0, Ls5/l$b;->c:Ls5/f0$e$d$a;

    if-nez v0, :cond_41

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_41
    iget-object v0, p0, Ls5/l$b;->d:Ls5/f0$e$d$c;

    if-nez v0, :cond_56

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " device"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_56
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 10
    new-instance v0, Ls5/l;

    iget-object v1, p0, Ls5/l$b;->a:Ljava/lang/Long;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Ls5/l$b;->b:Ljava/lang/String;

    iget-object v6, p0, Ls5/l$b;->c:Ls5/f0$e$d$a;

    iget-object v7, p0, Ls5/l$b;->d:Ls5/f0$e$d$c;

    iget-object v8, p0, Ls5/l$b;->e:Ls5/f0$e$d$d;

    iget-object v9, p0, Ls5/l$b;->f:Ls5/f0$e$d$f;

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ls5/l;-><init>(JLjava/lang/String;Ls5/f0$e$d$a;Ls5/f0$e$d$c;Ls5/f0$e$d$d;Ls5/f0$e$d$f;Ls5/l$a;)V

    return-object v0

    .line 12
    :cond_74
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

.method public b(Ls5/f0$e$d$a;)Ls5/f0$e$d$b;
    .registers 3

    const-string v0, "Null app"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ls5/l$b;->c:Ls5/f0$e$d$a;

    return-object p0
.end method

.method public c(Ls5/f0$e$d$c;)Ls5/f0$e$d$b;
    .registers 3

    const-string v0, "Null device"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ls5/l$b;->d:Ls5/f0$e$d$c;

    return-object p0
.end method

.method public d(Ls5/f0$e$d$d;)Ls5/f0$e$d$b;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/l$b;->e:Ls5/f0$e$d$d;

    return-object p0
.end method

.method public e(Ls5/f0$e$d$f;)Ls5/f0$e$d$b;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/l$b;->f:Ls5/f0$e$d$f;

    return-object p0
.end method

.method public f(J)Ls5/f0$e$d$b;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ls5/l$b;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Ls5/f0$e$d$b;
    .registers 3

    const-string v0, "Null type"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ls5/l$b;->b:Ljava/lang/String;

    return-object p0
.end method
