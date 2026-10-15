###### Class s5.m (s5.m)
.class final Ls5/m;
.super Ls5/f0$e$d$a;
.source "AutoValue_CrashlyticsReport_Session_Event_Application.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/m$b;
    }
.end annotation


# instance fields
.field private final a:Ls5/f0$e$d$a$b;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls5/f0$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls5/f0$c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Boolean;

.field private final e:Ls5/f0$e$d$a$c;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I


# direct methods
.method private constructor <init>(Ls5/f0$e$d$a$b;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ls5/f0$e$d$a$c;Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls5/f0$e$d$a$b;",
            "Ljava/util/List<",
            "Ls5/f0$c;",
            ">;",
            "Ljava/util/List<",
            "Ls5/f0$c;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ls5/f0$e$d$a$c;",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$c;",
            ">;I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ls5/f0$e$d$a;-><init>()V

    .line 3
    iput-object p1, p0, Ls5/m;->a:Ls5/f0$e$d$a$b;

    .line 4
    iput-object p2, p0, Ls5/m;->b:Ljava/util/List;

    .line 5
    iput-object p3, p0, Ls5/m;->c:Ljava/util/List;

    .line 6
    iput-object p4, p0, Ls5/m;->d:Ljava/lang/Boolean;

    .line 7
    iput-object p5, p0, Ls5/m;->e:Ls5/f0$e$d$a$c;

    .line 8
    iput-object p6, p0, Ls5/m;->f:Ljava/util/List;

    .line 9
    iput p7, p0, Ls5/m;->g:I

    return-void
.end method

.method synthetic constructor <init>(Ls5/f0$e$d$a$b;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ls5/f0$e$d$a$c;Ljava/util/List;ILs5/m$a;)V
    .registers 9

    .line 1
    invoke-direct/range {p0 .. p7}, Ls5/m;-><init>(Ls5/f0$e$d$a$b;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ls5/f0$e$d$a$c;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls5/m;->f:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/m;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public d()Ls5/f0$e$d$a$c;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/m;->e:Ls5/f0$e$d$a$c;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls5/m;->b:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Ls5/f0$e$d$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_8b

    .line 2
    check-cast p1, Ls5/f0$e$d$a;

    .line 3
    iget-object v1, p0, Ls5/m;->a:Ls5/f0$e$d$a$b;

    invoke-virtual {p1}, Ls5/f0$e$d$a;->f()Ls5/f0$e$d$a$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Ls5/m;->b:Ljava/util/List;

    if-nez v1, :cond_22

    .line 4
    invoke-virtual {p1}, Ls5/f0$e$d$a;->e()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_89

    goto :goto_2c

    :cond_22
    invoke-virtual {p1}, Ls5/f0$e$d$a;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    :goto_2c
    iget-object v1, p0, Ls5/m;->c:Ljava/util/List;

    if-nez v1, :cond_37

    .line 5
    invoke-virtual {p1}, Ls5/f0$e$d$a;->g()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_89

    goto :goto_41

    :cond_37
    invoke-virtual {p1}, Ls5/f0$e$d$a;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    :goto_41
    iget-object v1, p0, Ls5/m;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_4c

    .line 6
    invoke-virtual {p1}, Ls5/f0$e$d$a;->c()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_89

    goto :goto_56

    :cond_4c
    invoke-virtual {p1}, Ls5/f0$e$d$a;->c()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    :goto_56
    iget-object v1, p0, Ls5/m;->e:Ls5/f0$e$d$a$c;

    if-nez v1, :cond_61

    .line 7
    invoke-virtual {p1}, Ls5/f0$e$d$a;->d()Ls5/f0$e$d$a$c;

    move-result-object v1

    if-nez v1, :cond_89

    goto :goto_6b

    :cond_61
    invoke-virtual {p1}, Ls5/f0$e$d$a;->d()Ls5/f0$e$d$a$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    :goto_6b
    iget-object v1, p0, Ls5/m;->f:Ljava/util/List;

    if-nez v1, :cond_76

    .line 8
    invoke-virtual {p1}, Ls5/f0$e$d$a;->b()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_89

    goto :goto_80

    :cond_76
    invoke-virtual {p1}, Ls5/f0$e$d$a;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    :goto_80
    iget v1, p0, Ls5/m;->g:I

    .line 9
    invoke-virtual {p1}, Ls5/f0$e$d$a;->h()I

    move-result p1

    if-ne v1, p1, :cond_89

    goto :goto_8a

    :cond_89
    const/4 v0, 0x0

    :goto_8a
    return v0

    :cond_8b
    return v2
.end method

.method public f()Ls5/f0$e$d$a$b;
    .registers 2

    .line 1
    iget-object v0, p0, Ls5/m;->a:Ls5/f0$e$d$a$b;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls5/m;->c:Ljava/util/List;

    return-object v0
.end method

.method public h()I
    .registers 2

    .line 1
    iget v0, p0, Ls5/m;->g:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Ls5/m;->a:Ls5/f0$e$d$a$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Ls5/m;->b:Ljava/util/List;

    const/4 v3, 0x0

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_17
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Ls5/m;->c:Ljava/util/List;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_24
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v2, p0, Ls5/m;->d:Ljava/lang/Boolean;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_31
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget-object v2, p0, Ls5/m;->e:Ls5/f0$e$d$a$c;

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3e
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 6
    iget-object v2, p0, Ls5/m;->f:Ljava/util/List;

    if-nez v2, :cond_46

    goto :goto_4a

    :cond_46
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_4a
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 7
    iget v1, p0, Ls5/m;->g:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Ls5/f0$e$d$a$a;
    .registers 3

    .line 1
    new-instance v0, Ls5/m$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls5/m$b;-><init>(Ls5/f0$e$d$a;Ls5/m$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application{execution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/m;->a:Ls5/f0$e$d$a$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/m;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", internalKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/m;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/m;->d:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentProcessDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/m;->e:Ls5/f0$e$d$a$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appProcessDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls5/m;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uiOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ls5/m;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class s5.m.a (s5.m$a)
.class synthetic Ls5/m$a;
.super Ljava/lang/Object;
.source "AutoValue_CrashlyticsReport_Session_Event_Application.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class s5.m.b (s5.m$b)
.class final Ls5/m$b;
.super Ls5/f0$e$d$a$a;
.source "AutoValue_CrashlyticsReport_Session_Event_Application.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ls5/f0$e$d$a$b;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls5/f0$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls5/f0$c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Boolean;

.field private e:Ls5/f0$e$d$a$c;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ls5/f0$e$d$a$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Ls5/f0$e$d$a;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ls5/f0$e$d$a$a;-><init>()V

    .line 4
    invoke-virtual {p1}, Ls5/f0$e$d$a;->f()Ls5/f0$e$d$a$b;

    move-result-object v0

    iput-object v0, p0, Ls5/m$b;->a:Ls5/f0$e$d$a$b;

    .line 5
    invoke-virtual {p1}, Ls5/f0$e$d$a;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls5/m$b;->b:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Ls5/f0$e$d$a;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls5/m$b;->c:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Ls5/f0$e$d$a;->c()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ls5/m$b;->d:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p1}, Ls5/f0$e$d$a;->d()Ls5/f0$e$d$a$c;

    move-result-object v0

    iput-object v0, p0, Ls5/m$b;->e:Ls5/f0$e$d$a$c;

    .line 9
    invoke-virtual {p1}, Ls5/f0$e$d$a;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls5/m$b;->f:Ljava/util/List;

    .line 10
    invoke-virtual {p1}, Ls5/f0$e$d$a;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ls5/m$b;->g:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Ls5/f0$e$d$a;Ls5/m$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ls5/m$b;-><init>(Ls5/f0$e$d$a;)V

    return-void
.end method


# virtual methods
.method public a()Ls5/f0$e$d$a;
    .registers 12

    .line 1
    iget-object v0, p0, Ls5/m$b;->a:Ls5/f0$e$d$a$b;

    const-string v1, ""

    if-nez v0, :cond_17

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " execution"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_17
    iget-object v0, p0, Ls5/m$b;->g:Ljava/lang/Integer;

    if-nez v0, :cond_2c

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uiOrientation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 6
    new-instance v0, Ls5/m;

    iget-object v3, p0, Ls5/m$b;->a:Ls5/f0$e$d$a$b;

    iget-object v4, p0, Ls5/m$b;->b:Ljava/util/List;

    iget-object v5, p0, Ls5/m$b;->c:Ljava/util/List;

    iget-object v6, p0, Ls5/m$b;->d:Ljava/lang/Boolean;

    iget-object v7, p0, Ls5/m$b;->e:Ls5/f0$e$d$a$c;

    iget-object v8, p0, Ls5/m$b;->f:Ljava/util/List;

    iget-object v1, p0, Ls5/m$b;->g:Ljava/lang/Integer;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ls5/m;-><init>(Ls5/f0$e$d$a$b;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ls5/f0$e$d$a$c;Ljava/util/List;ILs5/m$a;)V

    return-object v0

    .line 8
    :cond_4c
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

.method public b(Ljava/util/List;)Ls5/f0$e$d$a$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$c;",
            ">;)",
            "Ls5/f0$e$d$a$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls5/m$b;->f:Ljava/util/List;

    return-object p0
.end method

.method public c(Ljava/lang/Boolean;)Ls5/f0$e$d$a$a;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/m$b;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public d(Ls5/f0$e$d$a$c;)Ls5/f0$e$d$a$a;
    .registers 2

    .line 1
    iput-object p1, p0, Ls5/m$b;->e:Ls5/f0$e$d$a$c;

    return-object p0
.end method

.method public e(Ljava/util/List;)Ls5/f0$e$d$a$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$c;",
            ">;)",
            "Ls5/f0$e$d$a$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls5/m$b;->b:Ljava/util/List;

    return-object p0
.end method

.method public f(Ls5/f0$e$d$a$b;)Ls5/f0$e$d$a$a;
    .registers 3

    const-string v0, "Null execution"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ls5/m$b;->a:Ls5/f0$e$d$a$b;

    return-object p0
.end method

.method public g(Ljava/util/List;)Ls5/f0$e$d$a$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$c;",
            ">;)",
            "Ls5/f0$e$d$a$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls5/m$b;->c:Ljava/util/List;

    return-object p0
.end method

.method public h(I)Ls5/f0$e$d$a$a;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ls5/m$b;->g:Ljava/lang/Integer;

    return-object p0
.end method
