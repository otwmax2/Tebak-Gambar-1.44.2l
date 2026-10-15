###### Class ja.d (ja.d)
.class public final Lja/d;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/d$a;
    }
.end annotation


# static fields
.field public static final n:Lja/d;

.field public static final o:Lja/d;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:I

.field private final i:I

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field m:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lja/d$a;

    invoke-direct {v0}, Lja/d$a;-><init>()V

    invoke-virtual {v0}, Lja/d$a;->c()Lja/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lja/d$a;->a()Lja/d;

    move-result-object v0

    sput-object v0, Lja/d;->n:Lja/d;

    .line 2
    new-instance v0, Lja/d$a;

    invoke-direct {v0}, Lja/d$a;-><init>()V

    .line 3
    invoke-virtual {v0}, Lja/d$a;->d()Lja/d$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const v2, 0x7fffffff

    .line 4
    invoke-virtual {v0, v2, v1}, Lja/d$a;->b(ILjava/util/concurrent/TimeUnit;)Lja/d$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lja/d$a;->a()Lja/d;

    move-result-object v0

    sput-object v0, Lja/d;->o:Lja/d;

    return-void
.end method

.method constructor <init>(Lja/d$a;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget-boolean v0, p1, Lja/d$a;->a:Z

    iput-boolean v0, p0, Lja/d;->a:Z

    .line 17
    iget-boolean v0, p1, Lja/d$a;->b:Z

    iput-boolean v0, p0, Lja/d;->b:Z

    .line 18
    iget v0, p1, Lja/d$a;->c:I

    iput v0, p0, Lja/d;->c:I

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lja/d;->d:I

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lja/d;->e:Z

    .line 21
    iput-boolean v0, p0, Lja/d;->f:Z

    .line 22
    iput-boolean v0, p0, Lja/d;->g:Z

    .line 23
    iget v0, p1, Lja/d$a;->d:I

    iput v0, p0, Lja/d;->h:I

    .line 24
    iget v0, p1, Lja/d$a;->e:I

    iput v0, p0, Lja/d;->i:I

    .line 25
    iget-boolean v0, p1, Lja/d$a;->f:Z

    iput-boolean v0, p0, Lja/d;->j:Z

    .line 26
    iget-boolean v0, p1, Lja/d$a;->g:Z

    iput-boolean v0, p0, Lja/d;->k:Z

    .line 27
    iget-boolean p1, p1, Lja/d$a;->h:Z

    iput-boolean p1, p0, Lja/d;->l:Z

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .registers 14
    .param p13    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lja/d;->a:Z

    .line 3
    iput-boolean p2, p0, Lja/d;->b:Z

    .line 4
    iput p3, p0, Lja/d;->c:I

    .line 5
    iput p4, p0, Lja/d;->d:I

    .line 6
    iput-boolean p5, p0, Lja/d;->e:Z

    .line 7
    iput-boolean p6, p0, Lja/d;->f:Z

    .line 8
    iput-boolean p7, p0, Lja/d;->g:Z

    .line 9
    iput p8, p0, Lja/d;->h:I

    .line 10
    iput p9, p0, Lja/d;->i:I

    .line 11
    iput-boolean p10, p0, Lja/d;->j:Z

    .line 12
    iput-boolean p11, p0, Lja/d;->k:Z

    .line 13
    iput-boolean p12, p0, Lja/d;->l:Z

    .line 14
    iput-object p13, p0, Lja/d;->m:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-boolean v1, p0, Lja/d;->a:Z

    if-eqz v1, :cond_e

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_e
    iget-boolean v1, p0, Lja/d;->b:Z

    if-eqz v1, :cond_17

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_17
    iget v1, p0, Lja/d;->c:I

    const-string v2, ", "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2b

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lja/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_2b
    iget v1, p0, Lja/d;->d:I

    if-eq v1, v3, :cond_3c

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lja/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_3c
    iget-boolean v1, p0, Lja/d;->e:Z

    if-eqz v1, :cond_45

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_45
    iget-boolean v1, p0, Lja/d;->f:Z

    if-eqz v1, :cond_4e

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_4e
    iget-boolean v1, p0, Lja/d;->g:Z

    if-eqz v1, :cond_57

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_57
    iget v1, p0, Lja/d;->h:I

    if-eq v1, v3, :cond_68

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lja/d;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_68
    iget v1, p0, Lja/d;->i:I

    if-eq v1, v3, :cond_79

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lja/d;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_79
    iget-boolean v1, p0, Lja/d;->j:Z

    if-eqz v1, :cond_82

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_82
    iget-boolean v1, p0, Lja/d;->k:Z

    if-eqz v1, :cond_8b

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_8b
    iget-boolean v1, p0, Lja/d;->l:Z

    if-eqz v1, :cond_94

    const-string v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_9d

    const-string v0, ""

    return-object v0

    .line 15
    :cond_9d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(Lja/s;)Lja/d;
    .registers 23

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lja/s;->h()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_1a
    if-ge v6, v1, :cond_13f

    .line 2
    invoke-virtual {v0, v6}, Lja/s;->e(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v6}, Lja/s;->i(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "Cache-Control"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    if-eqz v8, :cond_2f

    goto :goto_39

    :cond_2f
    move-object v8, v4

    goto :goto_3a

    :cond_31
    const-string v3, "Pragma"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_138

    :goto_39
    const/4 v7, 0x0

    :goto_3a
    const/4 v2, 0x0

    .line 6
    :goto_3b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_138

    const-string v3, "=,;"

    .line 7
    invoke-static {v4, v2, v3}, Lna/e;->f(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 8
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_99

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v0, 0x2c

    if-eq v5, v0, :cond_99

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_66

    goto :goto_99

    :cond_66
    add-int/lit8 v3, v3, 0x1

    .line 10
    invoke-static {v4, v3}, Lna/e;->g(Ljava/lang/String;I)I

    move-result v0

    .line 11
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_89

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_89

    add-int/lit8 v0, v0, 0x1

    const-string v3, "\""

    .line 12
    invoke-static {v4, v0, v3}, Lna/e;->f(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 13
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_9d

    :cond_89
    const/4 v5, 0x1

    const-string v3, ",;"

    .line 14
    invoke-static {v4, v0, v3}, Lna/e;->f(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 15
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_9d

    :cond_99
    :goto_99
    const/4 v5, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x0

    :goto_9d
    const-string v5, "no-cache"

    .line 16
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a9

    const/4 v5, -0x1

    const/4 v9, 0x1

    goto/16 :goto_133

    :cond_a9
    const-string v5, "no-store"

    .line 17
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    const/4 v5, -0x1

    const/4 v10, 0x1

    goto/16 :goto_133

    :cond_b5
    const-string v5, "max-age"

    .line 18
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c4

    const/4 v5, -0x1

    .line 19
    invoke-static {v0, v5}, Lna/e;->d(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_133

    :cond_c4
    const-string v5, "s-maxage"

    .line 20
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d2

    const/4 v5, -0x1

    .line 21
    invoke-static {v0, v5}, Lna/e;->d(Ljava/lang/String;I)I

    move-result v12

    goto :goto_133

    :cond_d2
    const-string v5, "private"

    .line 22
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_dd

    const/4 v5, -0x1

    const/4 v13, 0x1

    goto :goto_133

    :cond_dd
    const-string v5, "public"

    .line 23
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e8

    const/4 v5, -0x1

    const/4 v14, 0x1

    goto :goto_133

    :cond_e8
    const-string v5, "must-revalidate"

    .line 24
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f3

    const/4 v5, -0x1

    const/4 v15, 0x1

    goto :goto_133

    :cond_f3
    const-string v5, "max-stale"

    .line 25
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_104

    const v2, 0x7fffffff

    .line 26
    invoke-static {v0, v2}, Lna/e;->d(Ljava/lang/String;I)I

    move-result v16

    const/4 v5, -0x1

    goto :goto_133

    :cond_104
    const-string v5, "min-fresh"

    .line 27
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_112

    const/4 v5, -0x1

    .line 28
    invoke-static {v0, v5}, Lna/e;->d(Ljava/lang/String;I)I

    move-result v17

    goto :goto_133

    :cond_112
    const/4 v5, -0x1

    const-string v0, "only-if-cached"

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11e

    const/16 v18, 0x1

    goto :goto_133

    :cond_11e
    const-string v0, "no-transform"

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_129

    const/16 v19, 0x1

    goto :goto_133

    :cond_129
    const-string v0, "immutable"

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_133

    const/16 v20, 0x1

    :cond_133
    :goto_133
    move-object/from16 v0, p0

    move v2, v3

    goto/16 :goto_3b

    :cond_138
    const/4 v5, -0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1a

    :cond_13f
    if-nez v7, :cond_144

    const/16 v21, 0x0

    goto :goto_146

    :cond_144
    move-object/from16 v21, v8

    .line 32
    :goto_146
    new-instance v0, Lja/d;

    move-object v8, v0

    invoke-direct/range {v8 .. v21}, Lja/d;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lja/d;->e:Z

    return v0
.end method

.method public c()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lja/d;->f:Z

    return v0
.end method

.method public d()I
    .registers 2

    .line 1
    iget v0, p0, Lja/d;->c:I

    return v0
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Lja/d;->h:I

    return v0
.end method

.method public f()I
    .registers 2

    .line 1
    iget v0, p0, Lja/d;->i:I

    return v0
.end method

.method public g()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lja/d;->g:Z

    return v0
.end method

.method public h()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lja/d;->a:Z

    return v0
.end method

.method public i()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lja/d;->b:Z

    return v0
.end method

.method public j()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lja/d;->j:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/d;->m:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    .line 2
    :cond_5
    invoke-direct {p0}, Lja/d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lja/d;->m:Ljava/lang/String;

    :goto_b
    return-object v0
.end method

###### Class ja.d.a (ja.d$a)
.class public final Lja/d$a;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lja/d$a;->c:I

    .line 3
    iput v0, p0, Lja/d$a;->d:I

    .line 4
    iput v0, p0, Lja/d$a;->e:I

    return-void
.end method


# virtual methods
.method public a()Lja/d;
    .registers 2

    .line 1
    new-instance v0, Lja/d;

    invoke-direct {v0, p0}, Lja/d;-><init>(Lja/d$a;)V

    return-object v0
.end method

.method public b(ILjava/util/concurrent/TimeUnit;)Lja/d$a;
    .registers 6

    if-ltz p1, :cond_16

    int-to-long v0, p1

    .line 1
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_12

    const p1, 0x7fffffff

    goto :goto_13

    :cond_12
    long-to-int p1, p1

    .line 2
    :goto_13
    iput p1, p0, Lja/d$a;->d:I

    return-object p0

    .line 3
    :cond_16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxStale < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public c()Lja/d$a;
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lja/d$a;->a:Z

    return-object p0
.end method

.method public d()Lja/d$a;
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lja/d$a;->f:Z

    return-object p0
.end method
