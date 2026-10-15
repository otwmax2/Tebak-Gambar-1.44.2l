###### Class o6.a (o6.a)
.class final Lo6/a;
.super Lo6/d;
.source "AutoValue_InstallationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/a$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lo6/f;

.field private final e:Lo6/d$b;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo6/f;Lo6/d$b;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Lo6/d;-><init>()V

    .line 3
    iput-object p1, p0, Lo6/a;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lo6/a;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lo6/a;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lo6/a;->d:Lo6/f;

    .line 7
    iput-object p5, p0, Lo6/a;->e:Lo6/d$b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo6/f;Lo6/d$b;Lo6/a$a;)V
    .registers 7

    .line 1
    invoke-direct/range {p0 .. p5}, Lo6/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo6/f;Lo6/d$b;)V

    return-void
.end method


# virtual methods
.method public b()Lo6/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lo6/a;->d:Lo6/f;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lo6/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lo6/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lo6/d$b;
    .registers 2

    .line 1
    iget-object v0, p0, Lo6/a;->e:Lo6/d$b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lo6/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_77

    .line 2
    check-cast p1, Lo6/d;

    .line 3
    iget-object v1, p0, Lo6/a;->a:Ljava/lang/String;

    if-nez v1, :cond_16

    invoke-virtual {p1}, Lo6/d;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_75

    goto :goto_20

    :cond_16
    invoke-virtual {p1}, Lo6/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    :goto_20
    iget-object v1, p0, Lo6/a;->b:Ljava/lang/String;

    if-nez v1, :cond_2b

    .line 4
    invoke-virtual {p1}, Lo6/d;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_75

    goto :goto_35

    :cond_2b
    invoke-virtual {p1}, Lo6/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    :goto_35
    iget-object v1, p0, Lo6/a;->c:Ljava/lang/String;

    if-nez v1, :cond_40

    .line 5
    invoke-virtual {p1}, Lo6/d;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_75

    goto :goto_4a

    :cond_40
    invoke-virtual {p1}, Lo6/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    :goto_4a
    iget-object v1, p0, Lo6/a;->d:Lo6/f;

    if-nez v1, :cond_55

    .line 6
    invoke-virtual {p1}, Lo6/d;->b()Lo6/f;

    move-result-object v1

    if-nez v1, :cond_75

    goto :goto_5f

    :cond_55
    invoke-virtual {p1}, Lo6/d;->b()Lo6/f;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    :goto_5f
    iget-object v1, p0, Lo6/a;->e:Lo6/d$b;

    if-nez v1, :cond_6a

    .line 7
    invoke-virtual {p1}, Lo6/d;->e()Lo6/d$b;

    move-result-object p1

    if-nez p1, :cond_75

    goto :goto_76

    :cond_6a
    invoke-virtual {p1}, Lo6/d;->e()Lo6/d$b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_75

    goto :goto_76

    :cond_75
    const/4 v0, 0x0

    :goto_76
    return v0

    :cond_77
    return v2
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lo6/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Lo6/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 2
    iget-object v3, p0, Lo6/a;->b:Ljava/lang/String;

    if-nez v3, :cond_17

    const/4 v3, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1b
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 3
    iget-object v3, p0, Lo6/a;->c:Ljava/lang/String;

    if-nez v3, :cond_24

    const/4 v3, 0x0

    goto :goto_28

    :cond_24
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_28
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 4
    iget-object v3, p0, Lo6/a;->d:Lo6/f;

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_35

    :cond_31
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_35
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 5
    iget-object v2, p0, Lo6/a;->e:Lo6/d$b;

    if-nez v2, :cond_3d

    goto :goto_41

    :cond_3d
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_41
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallationResponse{uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo6/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo6/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo6/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo6/a;->d:Lo6/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo6/a;->e:Lo6/d$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class o6.a.C0211a (o6.a$a)
.class synthetic Lo6/a$a;
.super Ljava/lang/Object;
.source "AutoValue_InstallationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class o6.a.b (o6.a$b)
.class final Lo6/a$b;
.super Lo6/d$a;
.source "AutoValue_InstallationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lo6/f;

.field private e:Lo6/d$b;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lo6/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lo6/d;
    .registers 9

    .line 1
    new-instance v7, Lo6/a;

    iget-object v1, p0, Lo6/a$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lo6/a$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lo6/a$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lo6/a$b;->d:Lo6/f;

    iget-object v5, p0, Lo6/a$b;->e:Lo6/d$b;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo6/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo6/f;Lo6/d$b;Lo6/a$a;)V

    return-object v7
.end method

.method public b(Lo6/f;)Lo6/d$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lo6/a$b;->d:Lo6/f;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lo6/d$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lo6/a$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lo6/d$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lo6/a$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lo6/d$b;)Lo6/d$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lo6/a$b;->e:Lo6/d$b;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lo6/d$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lo6/a$b;->a:Ljava/lang/String;

    return-object p0
.end method
