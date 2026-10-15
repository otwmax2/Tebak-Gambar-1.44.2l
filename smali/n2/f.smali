###### Class n2.f (n2.f)
.class Ln2/f;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln2/f$e;,
        Ln2/f$b;,
        Ln2/f$d;,
        Ln2/f$c;
    }
.end annotation


# instance fields
.field private final a:Ln2/f$c;

.field private final b:Lx1/a;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Lv1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/e<",
            "Lx1/a;",
            "Lx1/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ln2/f$b;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln2/f$c;Lx1/a;II)V
    .registers 7

    .line 1
    invoke-static {p1}, Lv1/g;->i(Landroid/content/Context;)Lv1/g;

    move-result-object v0

    invoke-virtual {v0}, Lv1/g;->l()Lc2/c;

    move-result-object v0

    invoke-static {p1, p3, p4, p5, v0}, Ln2/f;->c(Landroid/content/Context;Lx1/a;IILc2/c;)Lv1/e;

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p0, p2, p3, p4, p1}, Ln2/f;-><init>(Ln2/f$c;Lx1/a;Landroid/os/Handler;Lv1/e;)V

    return-void
.end method

.method constructor <init>(Ln2/f$c;Lx1/a;Landroid/os/Handler;Lv1/e;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/f$c;",
            "Lx1/a;",
            "Landroid/os/Handler;",
            "Lv1/e<",
            "Lx1/a;",
            "Lx1/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ln2/f;->d:Z

    .line 4
    iput-boolean v0, p0, Ln2/f;->e:Z

    if-nez p3, :cond_19

    .line 5
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Ln2/f$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ln2/f$d;-><init>(Ln2/f;Ln2/f$a;)V

    invoke-direct {p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 6
    :cond_19
    iput-object p1, p0, Ln2/f;->a:Ln2/f$c;

    .line 7
    iput-object p2, p0, Ln2/f;->b:Lx1/a;

    .line 8
    iput-object p3, p0, Ln2/f;->c:Landroid/os/Handler;

    .line 9
    iput-object p4, p0, Ln2/f;->f:Lv1/e;

    return-void
.end method

.method private static c(Landroid/content/Context;Lx1/a;IILc2/c;)Lv1/e;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lx1/a;",
            "II",
            "Lc2/c;",
            ")",
            "Lv1/e<",
            "Lx1/a;",
            "Lx1/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln2/h;

    invoke-direct {v0, p4}, Ln2/h;-><init>(Lc2/c;)V

    .line 2
    new-instance p4, Ln2/g;

    invoke-direct {p4}, Ln2/g;-><init>()V

    .line 3
    invoke-static {}, Lj2/a;->c()Lz1/b;

    move-result-object v1

    .line 4
    invoke-static {p0}, Lv1/g;->v(Landroid/content/Context;)Lv1/j;

    move-result-object p0

    const-class v2, Lx1/a;

    invoke-virtual {p0, p4, v2}, Lv1/j;->E(Lg2/l;Ljava/lang/Class;)Lv1/j$c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lv1/j$c;->c(Ljava/lang/Object;)Lv1/j$c$a;

    move-result-object p0

    const-class p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lv1/j$c$a;->a(Ljava/lang/Class;)Lv1/f;

    move-result-object p0

    invoke-virtual {p0, v1}, Lv1/e;->A(Lz1/b;)Lv1/e;

    move-result-object p0

    invoke-virtual {p0, v0}, Lv1/e;->i(Lz1/e;)Lv1/e;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lv1/e;->z(Z)Lv1/e;

    move-result-object p0

    sget-object p1, Lb2/b;->r:Lb2/b;

    invoke-virtual {p0, p1}, Lv1/e;->j(Lb2/b;)Lv1/e;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lv1/e;->u(II)Lv1/e;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Ln2/f;->d:Z

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Ln2/f;->e:Z

    if-eqz v0, :cond_9

    goto :goto_38

    :cond_9
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln2/f;->e:Z

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ln2/f;->b:Lx1/a;

    invoke-virtual {v2}, Lx1/a;->h()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 4
    iget-object v2, p0, Ln2/f;->b:Lx1/a;

    invoke-virtual {v2}, Lx1/a;->a()V

    .line 5
    new-instance v2, Ln2/f$b;

    iget-object v3, p0, Ln2/f;->c:Landroid/os/Handler;

    iget-object v4, p0, Ln2/f;->b:Lx1/a;

    invoke-virtual {v4}, Lx1/a;->d()I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Ln2/f$b;-><init>(Landroid/os/Handler;IJ)V

    .line 6
    iget-object v0, p0, Ln2/f;->f:Lv1/e;

    new-instance v1, Ln2/f$e;

    invoke-direct {v1}, Ln2/f$e;-><init>()V

    invoke-virtual {v0, v1}, Lv1/e;->y(Lz1/c;)Lv1/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lv1/e;->q(Lv2/j;)Lv2/j;

    :cond_38
    :goto_38
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ln2/f;->h()V

    .line 2
    iget-object v0, p0, Ln2/f;->g:Ln2/f$b;

    if-eqz v0, :cond_d

    .line 3
    invoke-static {v0}, Lv1/g;->g(Lv2/j;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ln2/f;->g:Ln2/f$b;

    :cond_d
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ln2/f;->h:Z

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Ln2/f;->g:Ln2/f$b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ln2/f$b;->n()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method e(Ln2/f$b;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Ln2/f;->h:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Ln2/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 3
    :cond_f
    iget-object v0, p0, Ln2/f;->g:Ln2/f$b;

    .line 4
    iput-object p1, p0, Ln2/f;->g:Ln2/f$b;

    .line 5
    iget-object v2, p0, Ln2/f;->a:Ln2/f$c;

    invoke-static {p1}, Ln2/f$b;->f(Ln2/f$b;)I

    move-result p1

    invoke-interface {v2, p1}, Ln2/f$c;->a(I)V

    if-eqz v0, :cond_27

    .line 6
    iget-object p1, p0, Ln2/f;->c:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_27
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Ln2/f;->e:Z

    .line 8
    invoke-direct {p0}, Ln2/f;->d()V

    return-void
.end method

.method public f(Lz1/g;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/g<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Transformation must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ln2/f;->f:Lv1/e;

    const/4 v1, 0x1

    new-array v1, v1, [Lz1/g;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lv1/e;->B([Lz1/g;)Lv1/e;

    move-result-object p1

    iput-object p1, p0, Ln2/f;->f:Lv1/e;

    return-void
.end method

.method public g()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Ln2/f;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln2/f;->d:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ln2/f;->h:Z

    .line 4
    invoke-direct {p0}, Ln2/f;->d()V

    return-void
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln2/f;->d:Z

    return-void
.end method

###### Class n2.f.a (n2.f$a)
.class synthetic Ln2/f$a;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class n2.f.b (n2.f$b)
.class Ln2/f$b;
.super Lv2/g;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv2/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final r:Landroid/os/Handler;

.field private final s:I

.field private final t:J

.field private u:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lv2/g;-><init>()V

    .line 2
    iput-object p1, p0, Ln2/f$b;->r:Landroid/os/Handler;

    .line 3
    iput p2, p0, Ln2/f$b;->s:I

    .line 4
    iput-wide p3, p0, Ln2/f$b;->t:J

    return-void
.end method

.method static synthetic f(Ln2/f$b;)I
    .registers 1

    .line 1
    iget p0, p0, Ln2/f$b;->s:I

    return p0
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lu2/c;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Ln2/f$b;->o(Landroid/graphics/Bitmap;Lu2/c;)V

    return-void
.end method

.method public n()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Ln2/f$b;->u:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public o(Landroid/graphics/Bitmap;Lu2/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lu2/c<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln2/f$b;->u:Landroid/graphics/Bitmap;

    .line 2
    iget-object p1, p0, Ln2/f$b;->r:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object p2, p0, Ln2/f$b;->r:Landroid/os/Handler;

    iget-wide v0, p0, Ln2/f$b;->t:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

###### Class n2.f.c (n2.f$c)
.class public interface abstract Ln2/f$c;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(I)V
.end method

###### Class n2.f.d (n2.f$d)
.class Ln2/f$d;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic o:Ln2/f;


# direct methods
.method private constructor <init>(Ln2/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ln2/f$d;->o:Ln2/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ln2/f;Ln2/f$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Ln2/f$d;-><init>(Ln2/f;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln2/f$b;

    .line 3
    iget-object v0, p0, Ln2/f$d;->o:Ln2/f;

    invoke-virtual {v0, p1}, Ln2/f;->e(Ln2/f$b;)V

    return v1

    :cond_f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ln2/f$b;

    .line 5
    invoke-static {p1}, Lv1/g;->g(Lv2/j;)V

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

###### Class n2.f.e (n2.f$e)
.class Ln2/f$e;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Lz1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Ln2/f$e;-><init>(Ljava/util/UUID;)V

    return-void
.end method

.method constructor <init>(Ljava/util/UUID;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ln2/f$e;->a:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Ln2/f$e;

    if-eqz v0, :cond_f

    .line 2
    check-cast p1, Ln2/f$e;

    .line 3
    iget-object p1, p1, Ln2/f$e;->a:Ljava/util/UUID;

    iget-object v0, p0, Ln2/f$e;->a:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Ln2/f$e;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method
