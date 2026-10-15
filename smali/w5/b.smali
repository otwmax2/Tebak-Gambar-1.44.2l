###### Class w5.b (w5.b)
.class public Lw5/b;
.super Ljava/lang/Object;
.source "DataTransportCrashlyticsReportSender.java"


# static fields
.field private static final c:Lt5/j;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Lj3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj3/e<",
            "Ls5/f0;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lw5/e;

.field private final b:Lj3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj3/e<",
            "Ls5/f0;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lt5/j;

    invoke-direct {v0}, Lt5/j;-><init>()V

    sput-object v0, Lw5/b;->c:Lt5/j;

    const-string v0, "hts/cahyiseot-agolai.o/1frlglgc/aclg"

    const-string v1, "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho"

    .line 2
    invoke-static {v0, v1}, Lw5/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw5/b;->d:Ljava/lang/String;

    const-string v0, "AzSBpY4F0rHiHFdinTvM"

    const-string v1, "IayrSTFL9eJ69YeSUO2"

    .line 3
    invoke-static {v0, v1}, Lw5/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw5/b;->e:Ljava/lang/String;

    .line 4
    sget-object v0, Lw5/a;->a:Lw5/a;

    sput-object v0, Lw5/b;->f:Lj3/e;

    return-void
.end method

.method constructor <init>(Lw5/e;Lj3/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw5/e;",
            "Lj3/e<",
            "Ls5/f0;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw5/b;->a:Lw5/e;

    .line 3
    iput-object p2, p0, Lw5/b;->b:Lj3/e;

    return-void
.end method

.method public static synthetic a(Ls5/f0;)[B
    .registers 1

    invoke-static {p0}, Lw5/b;->d(Ls5/f0;)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lx5/i;Lq5/g0;)Lw5/b;
    .registers 7

    .line 1
    invoke-static {p0}, Ll3/u;->f(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Ll3/u;->c()Ll3/u;

    move-result-object p0

    new-instance v0, Lcom/google/android/datatransport/cct/a;

    sget-object v1, Lw5/b;->d:Ljava/lang/String;

    sget-object v2, Lw5/b;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/datatransport/cct/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Ll3/u;->g(Ll3/f;)Lj3/g;

    move-result-object p0

    const-class v0, Ls5/f0;

    const-string v1, "json"

    .line 4
    invoke-static {v1}, Lj3/b;->b(Ljava/lang/String;)Lj3/b;

    move-result-object v1

    sget-object v2, Lw5/b;->f:Lj3/e;

    const-string v3, "FIREBASE_CRASHLYTICS_REPORT"

    .line 5
    invoke-interface {p0, v3, v0, v1, v2}, Lj3/g;->a(Ljava/lang/String;Ljava/lang/Class;Lj3/b;Lj3/e;)Lj3/f;

    move-result-object p0

    .line 6
    new-instance v0, Lw5/e;

    .line 7
    invoke-interface {p1}, Lx5/i;->b()Lx5/d;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lw5/e;-><init>(Lj3/f;Lx5/d;Lq5/g0;)V

    .line 8
    new-instance p0, Lw5/b;

    invoke-direct {p0, v0, v2}, Lw5/b;-><init>(Lw5/e;Lj3/e;)V

    return-object p0
.end method

.method private static synthetic d(Ls5/f0;)[B
    .registers 2

    .line 1
    sget-object v0, Lw5/b;->c:Lt5/j;

    invoke-virtual {v0, p0}, Lt5/j;->M(Ls5/f0;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_3f

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3f

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_37

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 7
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid input received"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_48

    :goto_47
    throw p0

    :goto_48
    goto :goto_47
.end method


# virtual methods
.method public c(Lq5/u;Z)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/u;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lq5/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw5/b;->a:Lw5/e;

    invoke-virtual {v0, p1, p2}, Lw5/e;->i(Lq5/u;Z)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class w5.a (w5.a)
.class public final synthetic Lw5/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lj3/e;


# static fields
.field public static final synthetic a:Lw5/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lw5/a;

    invoke-direct {v0}, Lw5/a;-><init>()V

    sput-object v0, Lw5/a;->a:Lw5/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ls5/f0;

    invoke-static {p1}, Lw5/b;->a(Ls5/f0;)[B

    move-result-object p1

    return-object p1
.end method
