###### Class k3.f (k3.f)
.class final Lk3/f;
.super Lk3/l;
.source "AutoValue_LogEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk3/f$b;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/Integer;

.field private final c:J

.field private final d:[B

.field private final e:Ljava/lang/String;

.field private final f:J

.field private final g:Lk3/o;


# direct methods
.method private constructor <init>(JLjava/lang/Integer;J[BLjava/lang/String;JLk3/o;)V
    .registers 11

    .line 2
    invoke-direct {p0}, Lk3/l;-><init>()V

    .line 3
    iput-wide p1, p0, Lk3/f;->a:J

    .line 4
    iput-object p3, p0, Lk3/f;->b:Ljava/lang/Integer;

    .line 5
    iput-wide p4, p0, Lk3/f;->c:J

    .line 6
    iput-object p6, p0, Lk3/f;->d:[B

    .line 7
    iput-object p7, p0, Lk3/f;->e:Ljava/lang/String;

    .line 8
    iput-wide p8, p0, Lk3/f;->f:J

    .line 9
    iput-object p10, p0, Lk3/f;->g:Lk3/o;

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/Integer;J[BLjava/lang/String;JLk3/o;Lk3/f$a;)V
    .registers 12

    .line 1
    invoke-direct/range {p0 .. p10}, Lk3/f;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLk3/o;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lk3/f;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lk3/f;->a:J

    return-wide v0
.end method

.method public d()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lk3/f;->c:J

    return-wide v0
.end method

.method public e()Lk3/o;
    .registers 2

    .line 1
    iget-object v0, p0, Lk3/f;->g:Lk3/o;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lk3/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_81

    .line 2
    check-cast p1, Lk3/l;

    .line 3
    iget-wide v3, p0, Lk3/f;->a:J

    invoke-virtual {p1}, Lk3/l;->c()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7f

    iget-object v1, p0, Lk3/f;->b:Ljava/lang/Integer;

    if-nez v1, :cond_20

    .line 4
    invoke-virtual {p1}, Lk3/l;->b()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7f

    goto :goto_2a

    :cond_20
    invoke-virtual {p1}, Lk3/l;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    :goto_2a
    iget-wide v3, p0, Lk3/f;->c:J

    .line 5
    invoke-virtual {p1}, Lk3/l;->d()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7f

    iget-object v1, p0, Lk3/f;->d:[B

    .line 6
    instance-of v3, p1, Lk3/f;

    if-eqz v3, :cond_40

    move-object v3, p1

    check-cast v3, Lk3/f;

    iget-object v3, v3, Lk3/f;->d:[B

    goto :goto_44

    :cond_40
    invoke-virtual {p1}, Lk3/l;->f()[B

    move-result-object v3

    :goto_44
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lk3/f;->e:Ljava/lang/String;

    if-nez v1, :cond_55

    .line 7
    invoke-virtual {p1}, Lk3/l;->g()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7f

    goto :goto_5f

    :cond_55
    invoke-virtual {p1}, Lk3/l;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    :goto_5f
    iget-wide v3, p0, Lk3/f;->f:J

    .line 8
    invoke-virtual {p1}, Lk3/l;->h()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7f

    iget-object v1, p0, Lk3/f;->g:Lk3/o;

    if-nez v1, :cond_74

    .line 9
    invoke-virtual {p1}, Lk3/l;->e()Lk3/o;

    move-result-object p1

    if-nez p1, :cond_7f

    goto :goto_80

    :cond_74
    invoke-virtual {p1}, Lk3/l;->e()Lk3/o;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    goto :goto_80

    :cond_7f
    const/4 v0, 0x0

    :goto_80
    return v0

    :cond_81
    return v2
.end method

.method public f()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lk3/f;->d:[B

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lk3/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lk3/f;->f:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 10

    .line 1
    iget-wide v0, p0, Lk3/f;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    .line 2
    iget-object v3, p0, Lk3/f;->b:Ljava/lang/Integer;

    const/4 v4, 0x0

    if-nez v3, :cond_15

    const/4 v3, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_19
    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 3
    iget-wide v5, p0, Lk3/f;->c:J

    ushr-long v7, v5, v2

    xor-long/2addr v5, v7

    long-to-int v3, v5

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 4
    iget-object v3, p0, Lk3/f;->d:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 5
    iget-object v3, p0, Lk3/f;->e:Ljava/lang/String;

    if-nez v3, :cond_34

    const/4 v3, 0x0

    goto :goto_38

    :cond_34
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_38
    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 6
    iget-wide v5, p0, Lk3/f;->f:J

    ushr-long v2, v5, v2

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 7
    iget-object v0, p0, Lk3/f;->g:Lk3/o;

    if-nez v0, :cond_49

    goto :goto_4d

    :cond_49
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_4d
    xor-int v0, v1, v4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogEvent{eventTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lk3/f;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk3/f;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventUptimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lk3/f;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceExtension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk3/f;->d:[B

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceExtensionJsonProto3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk3/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timezoneOffsetSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lk3/f;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", networkConnectionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk3/f;->g:Lk3/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class k3.f.a (k3.f$a)
.class synthetic Lk3/f$a;
.super Ljava/lang/Object;
.source "AutoValue_LogEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class k3.f.b (k3.f$b)
.class final Lk3/f$b;
.super Lk3/l$a;
.source "AutoValue_LogEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Long;

.field private d:[B

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Long;

.field private g:Lk3/o;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lk3/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lk3/l;
    .registers 15

    .line 1
    iget-object v0, p0, Lk3/f$b;->a:Ljava/lang/Long;

    const-string v1, ""

    if-nez v0, :cond_17

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " eventTimeMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_17
    iget-object v0, p0, Lk3/f$b;->c:Ljava/lang/Long;

    if-nez v0, :cond_2c

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " eventUptimeMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_2c
    iget-object v0, p0, Lk3/f$b;->f:Ljava/lang/Long;

    if-nez v0, :cond_41

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timezoneOffsetSeconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_41
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 8
    new-instance v0, Lk3/f;

    iget-object v1, p0, Lk3/f$b;->a:Ljava/lang/Long;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lk3/f$b;->b:Ljava/lang/Integer;

    iget-object v1, p0, Lk3/f$b;->c:Ljava/lang/Long;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, p0, Lk3/f$b;->d:[B

    iget-object v9, p0, Lk3/f$b;->e:Ljava/lang/String;

    iget-object v1, p0, Lk3/f$b;->f:Ljava/lang/Long;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v12, p0, Lk3/f$b;->g:Lk3/o;

    const/4 v13, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lk3/f;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLk3/o;Lk3/f$a;)V

    return-object v0

    .line 12
    :cond_69
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

.method public b(Ljava/lang/Integer;)Lk3/l$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lk3/f$b;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public c(J)Lk3/l$a;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lk3/f$b;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public d(J)Lk3/l$a;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lk3/f$b;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public e(Lk3/o;)Lk3/l$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lk3/f$b;->g:Lk3/o;

    return-object p0
.end method

.method f([B)Lk3/l$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lk3/f$b;->d:[B

    return-object p0
.end method

.method g(Ljava/lang/String;)Lk3/l$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lk3/f$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public h(J)Lk3/l$a;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lk3/f$b;->f:Ljava/lang/Long;

    return-object p0
.end method
