###### Class com.google.android.gms.internal.drive.zzlf (com.google.android.gms.internal.drive.zzlf)
.class final Lcom/google/android/gms/internal/drive/zzlf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzmg;


# static fields
.field private static final b:Lcom/google/android/gms/internal/drive/zzlp;


# instance fields
.field private final a:Lcom/google/android/gms/internal/drive/zzlp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzlg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzlg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzlf;->b:Lcom/google/android/gms/internal/drive/zzlp;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzlh;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/drive/zzlp;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkj;->c()Lcom/google/android/gms/internal/drive/zzkj;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/drive/zzlf;->c()Lcom/google/android/gms/internal/drive/zzlp;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzlh;-><init>([Lcom/google/android/gms/internal/drive/zzlp;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzlf;-><init>(Lcom/google/android/gms/internal/drive/zzlp;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/drive/zzlp;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/drive/zzkm;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzlp;

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzlf;->a:Lcom/google/android/gms/internal/drive/zzlp;

    return-void
.end method

.method private static b(Lcom/google/android/gms/internal/drive/zzlo;)Z
    .registers 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/drive/zzlo;->a()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/drive/zzkk$zze;->i:I

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static c()Lcom/google/android/gms/internal/drive/zzlp;
    .registers 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzlp;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    .line 3
    :catch_19
    sget-object v0, Lcom/google/android/gms/internal/drive/zzlf;->b:Lcom/google/android/gms/internal/drive/zzlp;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzmf;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/drive/zzmf<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/drive/zzkk;

    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzmh;->H(Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzlf;->a:Lcom/google/android/gms/internal/drive/zzlp;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/drive/zzlp;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzlo;

    move-result-object v3

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/internal/drive/zzlo;->b()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmh;->z()Lcom/google/android/gms/internal/drive/zzmx;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzka;->b()Lcom/google/android/gms/internal/drive/zzjy;

    move-result-object v0

    .line 7
    invoke-interface {v3}, Lcom/google/android/gms/internal/drive/zzlo;->c()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v1

    .line 8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzlw;->a(Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzlq;)Lcom/google/android/gms/internal/drive/zzlw;

    move-result-object p1

    return-object p1

    .line 9
    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmh;->x()Lcom/google/android/gms/internal/drive/zzmx;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzka;->c()Lcom/google/android/gms/internal/drive/zzjy;

    move-result-object v0

    .line 11
    invoke-interface {v3}, Lcom/google/android/gms/internal/drive/zzlo;->c()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v1

    .line 12
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzlw;->a(Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzlq;)Lcom/google/android/gms/internal/drive/zzlw;

    move-result-object p1

    return-object p1

    .line 13
    :cond_39
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 14
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzlf;->b(Lcom/google/android/gms/internal/drive/zzlo;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzma;->b()Lcom/google/android/gms/internal/drive/zzly;

    move-result-object v4

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzla;->d()Lcom/google/android/gms/internal/drive/zzla;

    move-result-object v5

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmh;->z()Lcom/google/android/gms/internal/drive/zzmx;

    move-result-object v6

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzka;->b()Lcom/google/android/gms/internal/drive/zzjy;

    move-result-object v7

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzln;->b()Lcom/google/android/gms/internal/drive/zzll;

    move-result-object v8

    move-object v2, p1

    .line 20
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/drive/zzlu;->i(Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zzlo;Lcom/google/android/gms/internal/drive/zzly;Lcom/google/android/gms/internal/drive/zzla;Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzll;)Lcom/google/android/gms/internal/drive/zzlu;

    move-result-object p1

    return-object p1

    .line 21
    :cond_5f
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzma;->b()Lcom/google/android/gms/internal/drive/zzly;

    move-result-object v4

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzla;->d()Lcom/google/android/gms/internal/drive/zzla;

    move-result-object v5

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmh;->z()Lcom/google/android/gms/internal/drive/zzmx;

    move-result-object v6

    const/4 v7, 0x0

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzln;->b()Lcom/google/android/gms/internal/drive/zzll;

    move-result-object v8

    move-object v2, p1

    .line 25
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/drive/zzlu;->i(Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zzlo;Lcom/google/android/gms/internal/drive/zzly;Lcom/google/android/gms/internal/drive/zzla;Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzll;)Lcom/google/android/gms/internal/drive/zzlu;

    move-result-object p1

    return-object p1

    .line 26
    :cond_76
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzlf;->b(Lcom/google/android/gms/internal/drive/zzlo;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzma;->a()Lcom/google/android/gms/internal/drive/zzly;

    move-result-object v4

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzla;->c()Lcom/google/android/gms/internal/drive/zzla;

    move-result-object v5

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmh;->x()Lcom/google/android/gms/internal/drive/zzmx;

    move-result-object v6

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzka;->c()Lcom/google/android/gms/internal/drive/zzjy;

    move-result-object v7

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzln;->a()Lcom/google/android/gms/internal/drive/zzll;

    move-result-object v8

    move-object v2, p1

    .line 32
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/drive/zzlu;->i(Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zzlo;Lcom/google/android/gms/internal/drive/zzly;Lcom/google/android/gms/internal/drive/zzla;Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzll;)Lcom/google/android/gms/internal/drive/zzlu;

    move-result-object p1

    return-object p1

    .line 33
    :cond_96
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzma;->a()Lcom/google/android/gms/internal/drive/zzly;

    move-result-object v4

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzla;->c()Lcom/google/android/gms/internal/drive/zzla;

    move-result-object v5

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmh;->y()Lcom/google/android/gms/internal/drive/zzmx;

    move-result-object v6

    const/4 v7, 0x0

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzln;->a()Lcom/google/android/gms/internal/drive/zzll;

    move-result-object v8

    move-object v2, p1

    .line 37
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/drive/zzlu;->i(Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zzlo;Lcom/google/android/gms/internal/drive/zzly;Lcom/google/android/gms/internal/drive/zzla;Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzll;)Lcom/google/android/gms/internal/drive/zzlu;

    move-result-object p1

    return-object p1
.end method
