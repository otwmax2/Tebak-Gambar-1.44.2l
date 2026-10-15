###### Class s5.h (s5.h)
.class final Ls5/h;
.super Ls5/f0$e;
.source "AutoValue_CrashlyticsReport_Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/h$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Ljava/lang/Long;

.field private final f:Z

.field private final g:Ls5/f0$e$a;

.field private final h:Ls5/f0$e$f;

.field private final i:Ls5/f0$e$e;

.field private final j:Ls5/f0$e$c;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls5/f0$e$d;",
            ">;"
        }
    .end annotation
.end field

.field private final l:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLs5/f0$e$a;Ls5/f0$e$f;Ls5/f0$e$e;Ls5/f0$e$c;Ljava/util/List;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "Z",
            "Ls5/f0$e$a;",
            "Ls5/f0$e$f;",
            "Ls5/f0$e$e;",
            "Ls5/f0$e$c;",
            "Ljava/util/List<",
            "Ls5/f0$e$d;",
            ">;I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ls5/f0$e;-><init>()V

    .line 3
    iput-object p1, p0, Ls5/h;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Ls5/h;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Ls5/h;->c:Ljava/lang/String;

    .line 6
    iput-wide p4, p0, Ls5/h;->d:J

    .line 7
    iput-object p6, p0, Ls5/h;->e:Ljava/lang/Long;

    .line 8
    iput-boolean p7, p0, Ls5/h;->f:Z

    .line 9
    iput-object p8, p0, Ls5/h;->g:Ls5/f0$e$a;

    .line 10
    iput-object p9, p0, Ls5/h;->h:Ls5/f0$e$f;

    .line 11
    iput-object p10, p0, Ls5/h;->i:Ls5/f0$e$e;

    .line 12
    iput-object p11, p0, Ls5/h;->j:Ls5/f0$e$c;

    .line 13
    iput-object p12, p0, Ls5/h;->k:Ljava/util/List;

    .line 14
    iput p13, p0, Ls5/h;->l:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLs5/f0$e$a;Ls5/f0$e$f;Ls5/f0$e$e;Ls5/f0$e$c;Ljava/util/List;ILs5/h$a;)V
    .registers 15

    .line 1
    invoke-direct/range {p0 .. p13}, Ls5/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLs5/f0$e$a;Ls5/f0$e$f;Ls5/f0$e$e;Ls5/f0$e$c;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public b()Ls5/f0$e$a;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/h;->g:Ls5/f0$e$a;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ls5/f0$e$c;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/h;->j:Ls5/f0$e$c;

    return-object v0
.end method

.method public e()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/h;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Ls5/f0$e;

    const/4 v2, 0x0

    if-eqz v1, :cond_ca

    .line 2
    check-cast p1, Ls5/f0$e;

    .line 3
    iget-object v1, p0, Ls5/h;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ls5/f0$e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    iget-object v1, p0, Ls5/h;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ls5/f0$e;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    iget-object v1, p0, Ls5/h;->c:Ljava/lang/String;

    if-nez v1, :cond_2e

    .line 5
    invoke-virtual {p1}, Ls5/f0$e;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c8

    goto :goto_38

    :cond_2e
    invoke-virtual {p1}, Ls5/f0$e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    :goto_38
    iget-wide v3, p0, Ls5/h;->d:J

    .line 6
    invoke-virtual {p1}, Ls5/f0$e;->l()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_c8

    iget-object v1, p0, Ls5/h;->e:Ljava/lang/Long;

    if-nez v1, :cond_4d

    .line 7
    invoke-virtual {p1}, Ls5/f0$e;->e()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_c8

    goto :goto_57

    :cond_4d
    invoke-virtual {p1}, Ls5/f0$e;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    :goto_57
    iget-boolean v1, p0, Ls5/h;->f:Z

    .line 8
    invoke-virtual {p1}, Ls5/f0$e;->n()Z

    move-result v3

    if-ne v1, v3, :cond_c8

    iget-object v1, p0, Ls5/h;->g:Ls5/f0$e$a;

    .line 9
    invoke-virtual {p1}, Ls5/f0$e;->b()Ls5/f0$e$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    iget-object v1, p0, Ls5/h;->h:Ls5/f0$e$f;

    if-nez v1, :cond_76

    .line 10
    invoke-virtual {p1}, Ls5/f0$e;->m()Ls5/f0$e$f;

    move-result-object v1

    if-nez v1, :cond_c8

    goto :goto_80

    :cond_76
    invoke-virtual {p1}, Ls5/f0$e;->m()Ls5/f0$e$f;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    :goto_80
    iget-object v1, p0, Ls5/h;->i:Ls5/f0$e$e;

    if-nez v1, :cond_8b

    .line 11
    invoke-virtual {p1}, Ls5/f0$e;->k()Ls5/f0$e$e;

    move-result-object v1

    if-nez v1, :cond_c8

    goto :goto_95

    :cond_8b
    invoke-virtual {p1}, Ls5/f0$e;->k()Ls5/f0$e$e;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    :goto_95
    iget-object v1, p0, Ls5/h;->j:Ls5/f0$e$c;

    if-nez v1, :cond_a0

    .line 12
    invoke-virtual {p1}, Ls5/f0$e;->d()Ls5/f0$e$c;

    move-result-object v1

    if-nez v1, :cond_c8

    goto :goto_aa

    :cond_a0
    invoke-virtual {p1}, Ls5/f0$e;->d()Ls5/f0$e$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    :goto_aa
    iget-object v1, p0, Ls5/h;->k:Ljava/util/List;

    if-nez v1, :cond_b5

    .line 13
    invoke-virtual {p1}, Ls5/f0$e;->f()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_c8

    goto :goto_bf

    :cond_b5
    invoke-virtual {p1}, Ls5/f0$e;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    :goto_bf
    iget v1, p0, Ls5/h;->l:I

    .line 14
    invoke-virtual {p1}, Ls5/f0$e;->h()I

    move-result p1

    if-ne v1, p1, :cond_c8

    goto :goto_c9

    :cond_c8
    const/4 v0, 0x0

    :goto_c9
    return v0

    :cond_ca
    return v2
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$e$d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls5/h;->k:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .registers 2

    .line 1
    iget v0, p0, Ls5/h;->l:I

    return v0
.end method

.method public hashCode()I
    .registers 9

    .line 1
    iget-object v0, p0, Ls5/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Ls5/h;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Ls5/h;->c:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_20
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-wide v4, p0, Ls5/h;->d:J

    const/16 v2, 0x20

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget-object v2, p0, Ls5/h;->e:Ljava/lang/Long;

    if-nez v2, :cond_34

    const/4 v2, 0x0

    goto :goto_38

    :cond_34
    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_38
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 6
    iget-boolean v2, p0, Ls5/h;->f:Z

    if-eqz v2, :cond_42

    const/16 v2, 0x4cf

    goto :goto_44

    :cond_42
    const/16 v2, 0x4d5

    :goto_44
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 7
    iget-object v2, p0, Ls5/h;->g:Ls5/f0$e$a;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 8
    iget-object v2, p0, Ls5/h;->h:Ls5/f0$e$f;

    if-nez v2, :cond_56

    const/4 v2, 0x0

    goto :goto_5a

    :cond_56
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5a
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 9
    iget-object v2, p0, Ls5/h;->i:Ls5/f0$e$e;

    if-nez v2, :cond_63

    const/4 v2, 0x0

    goto :goto_67

    :cond_63
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_67
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 10
    iget-object v2, p0, Ls5/h;->j:Ls5/f0$e$c;

    if-nez v2, :cond_70

    const/4 v2, 0x0

    goto :goto_74

    :cond_70
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_74
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 11
    iget-object v2, p0, Ls5/h;->k:Ljava/util/List;

    if-nez v2, :cond_7c

    goto :goto_80

    :cond_7c
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_80
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 12
    iget v1, p0, Ls5/h;->l:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ls5/f0$e$e;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/h;->i:Ls5/f0$e$e;

    return-object v0
.end method

.method public l()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ls5/h;->d:J

    return-wide v0
.end method

.method public m()Ls5/f0$e$f;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/h;->h:Ls5/f0$e$f;

    return-object v0
.end method

.method public n()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ls5/h;->f:Z

    return v0
.end method

.method public o()Ls5/f0$e$b;
    .registers 3

    .line 1
    new-instance v0, Ls5/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls5/h$b;-><init>(Ls5/f0$e;Ls5/h$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session{generator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appQualitySessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ls5/h;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/h;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", crashed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ls5/h;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/h;->g:Ls5/f0$e$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/h;->h:Ls5/f0$e$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", os="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/h;->i:Ls5/f0$e$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/h;->j:Ls5/f0$e$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/h;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", generatorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ls5/h;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class s5.h.a (s5.h$a)
.class synthetic Ls5/h$a;
.super Ljava/lang/Object;
.source "AutoValue_CrashlyticsReport_Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class s5.h.b (s5.h$b)
.class final Ls5/h$b;
.super Ls5/f0$e$b;
.source "AutoValue_CrashlyticsReport_Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/Boolean;

.field private g:Ls5/f0$e$a;

.field private h:Ls5/f0$e$f;

.field private i:Ls5/f0$e$e;

.field private j:Ls5/f0$e$c;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls5/f0$e$d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ls5/f0$e$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Ls5/f0$e;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ls5/f0$e$b;-><init>()V

    .line 4
    invoke-virtual {p1}, Ls5/f0$e;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ls5/h$b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ls5/f0$e;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ls5/h$b;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Ls5/f0$e;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ls5/h$b;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Ls5/f0$e;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ls5/h$b;->d:Ljava/lang/Long;

    .line 8
    invoke-virtual {p1}, Ls5/f0$e;->e()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ls5/h$b;->e:Ljava/lang/Long;

    .line 9
    invoke-virtual {p1}, Ls5/f0$e;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ls5/h$b;->f:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {p1}, Ls5/f0$e;->b()Ls5/f0$e$a;

    move-result-object v0

    iput-object v0, p0, Ls5/h$b;->g:Ls5/f0$e$a;

    .line 11
    invoke-virtual {p1}, Ls5/f0$e;->m()Ls5/f0$e$f;

    move-result-object v0

    iput-object v0, p0, Ls5/h$b;->h:Ls5/f0$e$f;

    .line 12
    invoke-virtual {p1}, Ls5/f0$e;->k()Ls5/f0$e$e;

    move-result-object v0

    iput-object v0, p0, Ls5/h$b;->i:Ls5/f0$e$e;

    .line 13
    invoke-virtual {p1}, Ls5/f0$e;->d()Ls5/f0$e$c;

    move-result-object v0

    iput-object v0, p0, Ls5/h$b;->j:Ls5/f0$e$c;

    .line 14
    invoke-virtual {p1}, Ls5/f0$e;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls5/h$b;->k:Ljava/util/List;

    .line 15
    invoke-virtual {p1}, Ls5/f0$e;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ls5/h$b;->l:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Ls5/f0$e;Ls5/h$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ls5/h$b;-><init>(Ls5/f0$e;)V

    return-void
.end method


# virtual methods
.method public a()Ls5/f0$e;
    .registers 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ls5/h$b;->a:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_19

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " generator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    :cond_19
    iget-object v1, v0, Ls5/h$b;->b:Ljava/lang/String;

    if-nez v1, :cond_2e

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " identifier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    :cond_2e
    iget-object v1, v0, Ls5/h$b;->d:Ljava/lang/Long;

    if-nez v1, :cond_43

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " startedAt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_43
    iget-object v1, v0, Ls5/h$b;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_58

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " crashed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    :cond_58
    iget-object v1, v0, Ls5/h$b;->g:Ls5/f0$e$a;

    if-nez v1, :cond_6d

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    :cond_6d
    iget-object v1, v0, Ls5/h$b;->l:Ljava/lang/Integer;

    if-nez v1, :cond_82

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " generatorType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    :cond_82
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 14
    new-instance v1, Ls5/h;

    iget-object v4, v0, Ls5/h$b;->a:Ljava/lang/String;

    iget-object v5, v0, Ls5/h$b;->b:Ljava/lang/String;

    iget-object v6, v0, Ls5/h$b;->c:Ljava/lang/String;

    iget-object v2, v0, Ls5/h$b;->d:Ljava/lang/Long;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v9, v0, Ls5/h$b;->e:Ljava/lang/Long;

    iget-object v2, v0, Ls5/h$b;->f:Ljava/lang/Boolean;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v11, v0, Ls5/h$b;->g:Ls5/f0$e$a;

    iget-object v12, v0, Ls5/h$b;->h:Ls5/f0$e$f;

    iget-object v13, v0, Ls5/h$b;->i:Ls5/f0$e$e;

    iget-object v14, v0, Ls5/h$b;->j:Ls5/f0$e$c;

    iget-object v15, v0, Ls5/h$b;->k:Ljava/util/List;

    iget-object v2, v0, Ls5/h$b;->l:Ljava/lang/Integer;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Ls5/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLs5/f0$e$a;Ls5/f0$e$f;Ls5/f0$e$e;Ls5/f0$e$c;Ljava/util/List;ILs5/h$a;)V

    return-object v1

    .line 18
    :cond_b5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Ls5/f0$e$a;)Ls5/f0$e$b;
    .registers 3

    const-string v0, "Null app"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ls5/h$b;->g:Ls5/f0$e$a;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Ls5/f0$e$b;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/h$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Ls5/f0$e$b;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Ls5/h$b;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public e(Ls5/f0$e$c;)Ls5/f0$e$b;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/h$b;->j:Ls5/f0$e$c;

    return-object p0
.end method

.method public f(Ljava/lang/Long;)Ls5/f0$e$b;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/h$b;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public g(Ljava/util/List;)Ls5/f0$e$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$e$d;",
            ">;)",
            "Ls5/f0$e$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls5/h$b;->k:Ljava/util/List;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Ls5/f0$e$b;
    .registers 3

    const-string v0, "Null generator"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ls5/h$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public i(I)Ls5/f0$e$b;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ls5/h$b;->l:Ljava/lang/Integer;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Ls5/f0$e$b;
    .registers 3

    const-string v0, "Null identifier"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ls5/h$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ls5/f0$e$e;)Ls5/f0$e$b;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/h$b;->i:Ls5/f0$e$e;

    return-object p0
.end method

.method public m(J)Ls5/f0$e$b;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ls5/h$b;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public n(Ls5/f0$e$f;)Ls5/f0$e$b;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/h$b;->h:Ls5/f0$e$f;

    return-object p0
.end method
