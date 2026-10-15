###### Class i1.b (i1.b)
.class public final Li1/b;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/b$a;
    }
.end annotation


# static fields
.field public static final i:Li1/b;


# instance fields
.field private a:Li1/k;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:J

.field private g:J

.field private h:Li1/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Li1/b$a;

    invoke-direct {v0}, Li1/b$a;-><init>()V

    invoke-virtual {v0}, Li1/b$a;->a()Li1/b;

    move-result-object v0

    sput-object v0, Li1/b;->i:Li1/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Li1/k;->o:Li1/k;

    iput-object v0, p0, Li1/b;->a:Li1/k;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Li1/b;->f:J

    .line 4
    iput-wide v0, p0, Li1/b;->g:J

    .line 5
    new-instance v0, Li1/c;

    invoke-direct {v0}, Li1/c;-><init>()V

    iput-object v0, p0, Li1/b;->h:Li1/c;

    return-void
.end method

.method constructor <init>(Li1/b$a;)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Li1/k;->o:Li1/k;

    iput-object v0, p0, Li1/b;->a:Li1/k;

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Li1/b;->f:J

    .line 9
    iput-wide v0, p0, Li1/b;->g:J

    .line 10
    new-instance v0, Li1/c;

    invoke-direct {v0}, Li1/c;-><init>()V

    iput-object v0, p0, Li1/b;->h:Li1/c;

    .line 11
    iget-boolean v0, p1, Li1/b$a;->a:Z

    iput-boolean v0, p0, Li1/b;->b:Z

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_24

    iget-boolean v1, p1, Li1/b$a;->b:Z

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    iput-boolean v1, p0, Li1/b;->c:Z

    .line 13
    iget-object v1, p1, Li1/b$a;->c:Li1/k;

    iput-object v1, p0, Li1/b;->a:Li1/k;

    .line 14
    iget-boolean v1, p1, Li1/b$a;->d:Z

    iput-boolean v1, p0, Li1/b;->d:Z

    .line 15
    iget-boolean v1, p1, Li1/b$a;->e:Z

    iput-boolean v1, p0, Li1/b;->e:Z

    const/16 v1, 0x18

    if-lt v0, v1, :cond_43

    .line 16
    iget-object v0, p1, Li1/b$a;->h:Li1/c;

    iput-object v0, p0, Li1/b;->h:Li1/c;

    .line 17
    iget-wide v0, p1, Li1/b$a;->f:J

    iput-wide v0, p0, Li1/b;->f:J

    .line 18
    iget-wide v0, p1, Li1/b$a;->g:J

    iput-wide v0, p0, Li1/b;->g:J

    :cond_43
    return-void
.end method

.method public constructor <init>(Li1/b;)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Li1/k;->o:Li1/k;

    iput-object v0, p0, Li1/b;->a:Li1/k;

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Li1/b;->f:J

    .line 22
    iput-wide v0, p0, Li1/b;->g:J

    .line 23
    new-instance v0, Li1/c;

    invoke-direct {v0}, Li1/c;-><init>()V

    iput-object v0, p0, Li1/b;->h:Li1/c;

    .line 24
    iget-boolean v0, p1, Li1/b;->b:Z

    iput-boolean v0, p0, Li1/b;->b:Z

    .line 25
    iget-boolean v0, p1, Li1/b;->c:Z

    iput-boolean v0, p0, Li1/b;->c:Z

    .line 26
    iget-object v0, p1, Li1/b;->a:Li1/k;

    iput-object v0, p0, Li1/b;->a:Li1/k;

    .line 27
    iget-boolean v0, p1, Li1/b;->d:Z

    iput-boolean v0, p0, Li1/b;->d:Z

    .line 28
    iget-boolean v0, p1, Li1/b;->e:Z

    iput-boolean v0, p0, Li1/b;->e:Z

    .line 29
    iget-object p1, p1, Li1/b;->h:Li1/c;

    iput-object p1, p0, Li1/b;->h:Li1/c;

    return-void
.end method


# virtual methods
.method public a()Li1/c;
    .registers 2

    .line 1
    iget-object v0, p0, Li1/b;->h:Li1/c;

    return-object v0
.end method

.method public b()Li1/k;
    .registers 2

    .line 1
    iget-object v0, p0, Li1/b;->a:Li1/k;

    return-object v0
.end method

.method public c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Li1/b;->f:J

    return-wide v0
.end method

.method public d()J
    .registers 3

    .line 1
    iget-wide v0, p0, Li1/b;->g:J

    return-wide v0
.end method

.method public e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Li1/b;->h:Li1/c;

    invoke-virtual {v0}, Li1/c;->c()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_50

    .line 1
    const-class v1, Li1/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_10

    goto :goto_50

    .line 2
    :cond_10
    check-cast p1, Li1/b;

    .line 3
    iget-boolean v1, p0, Li1/b;->b:Z

    iget-boolean v2, p1, Li1/b;->b:Z

    if-eq v1, v2, :cond_19

    return v0

    .line 4
    :cond_19
    iget-boolean v1, p0, Li1/b;->c:Z

    iget-boolean v2, p1, Li1/b;->c:Z

    if-eq v1, v2, :cond_20

    return v0

    .line 5
    :cond_20
    iget-boolean v1, p0, Li1/b;->d:Z

    iget-boolean v2, p1, Li1/b;->d:Z

    if-eq v1, v2, :cond_27

    return v0

    .line 6
    :cond_27
    iget-boolean v1, p0, Li1/b;->e:Z

    iget-boolean v2, p1, Li1/b;->e:Z

    if-eq v1, v2, :cond_2e

    return v0

    .line 7
    :cond_2e
    iget-wide v1, p0, Li1/b;->f:J

    iget-wide v3, p1, Li1/b;->f:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_37

    return v0

    .line 8
    :cond_37
    iget-wide v1, p0, Li1/b;->g:J

    iget-wide v3, p1, Li1/b;->g:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_40

    return v0

    .line 9
    :cond_40
    iget-object v1, p0, Li1/b;->a:Li1/k;

    iget-object v2, p1, Li1/b;->a:Li1/k;

    if-eq v1, v2, :cond_47

    return v0

    .line 10
    :cond_47
    iget-object v0, p0, Li1/b;->h:Li1/c;

    iget-object p1, p1, Li1/b;->h:Li1/c;

    invoke-virtual {v0, p1}, Li1/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_50
    :goto_50
    return v0
.end method

.method public f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Li1/b;->d:Z

    return v0
.end method

.method public g()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Li1/b;->b:Z

    return v0
.end method

.method public h()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Li1/b;->c:Z

    return v0
.end method

.method public hashCode()I
    .registers 7

    .line 1
    iget-object v0, p0, Li1/b;->a:Li1/k;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Li1/b;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Li1/b;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Li1/b;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean v1, p0, Li1/b;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-wide v1, p0, Li1/b;->f:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-wide v1, p0, Li1/b;->g:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Li1/b;->h:Li1/c;

    invoke-virtual {v1}, Li1/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Li1/b;->e:Z

    return v0
.end method

.method public j(Li1/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Li1/b;->h:Li1/c;

    return-void
.end method

.method public k(Li1/k;)V
    .registers 2

    .line 1
    iput-object p1, p0, Li1/b;->a:Li1/k;

    return-void
.end method

.method public l(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Li1/b;->d:Z

    return-void
.end method

.method public m(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Li1/b;->b:Z

    return-void
.end method

.method public n(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Li1/b;->c:Z

    return-void
.end method

.method public o(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Li1/b;->e:Z

    return-void
.end method

.method public p(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Li1/b;->f:J

    return-void
.end method

.method public q(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Li1/b;->g:J

    return-void
.end method

###### Class i1.b.a (i1.b$a)
.class public final Li1/b$a;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Li1/k;

.field d:Z

.field e:Z

.field f:J

.field g:J

.field h:Li1/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Li1/b$a;->a:Z

    .line 3
    iput-boolean v0, p0, Li1/b$a;->b:Z

    .line 4
    sget-object v1, Li1/k;->o:Li1/k;

    iput-object v1, p0, Li1/b$a;->c:Li1/k;

    .line 5
    iput-boolean v0, p0, Li1/b$a;->d:Z

    .line 6
    iput-boolean v0, p0, Li1/b$a;->e:Z

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Li1/b$a;->f:J

    .line 8
    iput-wide v0, p0, Li1/b$a;->g:J

    .line 9
    new-instance v0, Li1/c;

    invoke-direct {v0}, Li1/c;-><init>()V

    iput-object v0, p0, Li1/b$a;->h:Li1/c;

    return-void
.end method


# virtual methods
.method public a()Li1/b;
    .registers 2

    .line 1
    new-instance v0, Li1/b;

    invoke-direct {v0, p0}, Li1/b;-><init>(Li1/b$a;)V

    return-object v0
.end method

.method public b(Li1/k;)Li1/b$a;
    .registers 2

    .line 1
    iput-object p1, p0, Li1/b$a;->c:Li1/k;

    return-object p0
.end method
