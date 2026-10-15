###### Class com.google.android.gms.internal.drive.zzkk (com.google.android.gms.internal.drive.zzkk)
.class public abstract Lcom/google/android/gms/internal/drive/zzkk;
.super Lcom/google/android/gms/internal/drive/zzit;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/drive/zzkk$zzb;,
        Lcom/google/android/gms/internal/drive/zzkk$zzd;,
        Lcom/google/android/gms/internal/drive/zzkk$zzc;,
        Lcom/google/android/gms/internal/drive/zzkk$zza;,
        Lcom/google/android/gms/internal/drive/zzkk$zze;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/drive/zzkk<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/drive/zzkk$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/drive/zzit<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/drive/zzkk<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzrq:Lcom/google/android/gms/internal/drive/zzmy;

.field private zzrr:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzkk;->zzrs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzit;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmy;->h()Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrr:I

    return-void
.end method

.method protected static j(Lcom/google/android/gms/internal/drive/zzlq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzme;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzme;-><init>(Lcom/google/android/gms/internal/drive/zzlq;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs k(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1d

    .line 4
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_15

    .line 5
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 6
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 7
    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_20
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static l(Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zzkk;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/drive/zzkk<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzkk;->zzrs:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final m(Lcom/google/android/gms/internal/drive/zzkk;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/drive/zzkk<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/drive/zzkk$zze;->a:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/drive/zzkk;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    return v2

    :cond_11
    if-nez v0, :cond_15

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->a()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/drive/zzmd;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/drive/zzmf;->h(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_2d

    .line 5
    sget p1, Lcom/google/android/gms/internal/drive/zzkk$zze;->b:I

    if-eqz v0, :cond_29

    move-object v2, p0

    goto :goto_2a

    :cond_29
    move-object v2, v1

    .line 6
    :goto_2a
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/drive/zzkk;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    return v0
.end method

.method static p(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzkk;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/drive/zzkk<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzkk;->zzrs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    if-nez v0, :cond_28

    .line 2
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_1f

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/drive/zzkk;->zzrs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    goto :goto_28

    :catch_1f
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_28
    :goto_28
    if-nez v0, :cond_47

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zznd;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    .line 6
    sget v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->f:I

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/drive/zzkk;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    if-eqz v0, :cond_41

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/drive/zzkk;->zzrs:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 10
    :cond_41
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_47
    :goto_47
    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/google/android/gms/internal/drive/zzlq;
    .registers 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/drive/zzkk$zze;->f:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/drive/zzkk;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/internal/drive/zzjr;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->a()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/drive/zzmd;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjt;->h(Lcom/google/android/gms/internal/drive/zzjr;)Lcom/google/android/gms/internal/drive/zzjt;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzmf;->f(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    return-void
.end method

.method final e()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrr:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    sget v0, Lcom/google/android/gms/internal/drive/zzkk$zze;->f:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/drive/zzkk;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->a()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/drive/zzmd;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzmf;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrr:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->a()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/drive/zzmd;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/drive/zzmf;->e(Ljava/lang/Object;)I

    move-result v0

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrr:I

    .line 4
    :cond_13
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrr:I

    return v0
.end method

.method public final synthetic g()Lcom/google/android/gms/internal/drive/zzlr;
    .registers 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/drive/zzkk$zze;->e:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/drive/zzkk;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk$zza;

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->j(Lcom/google/android/gms/internal/drive/zzkk;)Lcom/google/android/gms/internal/drive/zzkk$zza;

    return-object v0
.end method

.method final h(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrr:I

    return-void
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzit;->zzne:I

    if-eqz v0, :cond_5

    return v0

    .line 2
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->a()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/drive/zzmd;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/drive/zzmf;->d(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzit;->zzne:I

    return v0
.end method

.method protected abstract i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final isInitialized()Z
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/drive/zzkk;->m(Lcom/google/android/gms/internal/drive/zzkk;Z)Z

    move-result v0

    return v0
.end method

.method protected final n()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->a()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/drive/zzmd;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/drive/zzmf;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected final o()Lcom/google/android/gms/internal/drive/zzkk$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/drive/zzkk<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/drive/zzkk$zza<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/drive/zzkk$zze;->e:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/drive/zzkk;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk$zza;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/drive/zzlt;->a(Lcom/google/android/gms/internal/drive/zzlq;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.drive.zzkk.zza (com.google.android.gms.internal.drive.zzkk$zza)
.class public Lcom/google/android/gms/internal/drive/zzkk$zza;
.super Lcom/google/android/gms/internal/drive/zziu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/drive/zzkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/drive/zzkk<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/drive/zzkk$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/drive/zziu<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/internal/drive/zzkk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected p:Lcom/google/android/gms/internal/drive/zzkk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private q:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/drive/zzkk;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zziu;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->o:Lcom/google/android/gms/internal/drive/zzkk;

    .line 3
    sget v0, Lcom/google/android/gms/internal/drive/zzkk$zze;->d:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/drive/zzkk;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk;

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->q:Z

    return-void
.end method

.method private static k(Lcom/google/android/gms/internal/drive/zzkk;Lcom/google/android/gms/internal/drive/zzkk;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmd;->a()Lcom/google/android/gms/internal/drive/zzmd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/drive/zzmd;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzmf;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzmf;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic G2()Lcom/google/android/gms/internal/drive/zzlq;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->m()Lcom/google/android/gms/internal/drive/zzkk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a()Lcom/google/android/gms/internal/drive/zzlq;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->o:Lcom/google/android/gms/internal/drive/zzkk;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->o:Lcom/google/android/gms/internal/drive/zzkk;

    .line 2
    sget v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->e:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/drive/zzkk;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk$zza;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->G2()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/drive/zzkk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/drive/zzkk$zza;->j(Lcom/google/android/gms/internal/drive/zzkk;)Lcom/google/android/gms/internal/drive/zzkk$zza;

    return-object v0
.end method

.method protected final synthetic h(Lcom/google/android/gms/internal/drive/zzit;)Lcom/google/android/gms/internal/drive/zziu;
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzkk$zza;->j(Lcom/google/android/gms/internal/drive/zzkk;)Lcom/google/android/gms/internal/drive/zzkk$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic i()Lcom/google/android/gms/internal/drive/zziu;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk$zza;

    return-object v0
.end method

.method public final j(Lcom/google/android/gms/internal/drive/zzkk;)Lcom/google/android/gms/internal/drive/zzkk$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->l()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzkk$zza;->k(Lcom/google/android/gms/internal/drive/zzkk;Lcom/google/android/gms/internal/drive/zzkk;)V

    return-object p0
.end method

.method protected final l()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->q:Z

    if-eqz v0, :cond_19

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    sget v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->d:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/drive/zzkk;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/drive/zzkk$zza;->k(Lcom/google/android/gms/internal/drive/zzkk;Lcom/google/android/gms/internal/drive/zzkk;)V

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->q:Z

    :cond_19
    return-void
.end method

.method public m()Lcom/google/android/gms/internal/drive/zzkk;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->q:Z

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    return-object v0

    .line 3
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk;->n()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->q:Z

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/internal/drive/zzkk;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->G2()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    .line 3
    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/drive/zzmw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/drive/zzmw;-><init>(Lcom/google/android/gms/internal/drive/zzlq;)V

    .line 4
    throw v1
.end method

.method public synthetic n1()Lcom/google/android/gms/internal/drive/zzlq;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->n()Lcom/google/android/gms/internal/drive/zzkk;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.drive.zzkk.zzb (com.google.android.gms.internal.drive.zzkk$zzb)
.class public final Lcom/google/android/gms/internal/drive/zzkk$zzb;
.super Lcom/google/android/gms/internal/drive/zziv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/drive/zzkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/drive/zzkk<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/drive/zziv<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/internal/drive/zzkk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/drive/zzkk;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zziv;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkk$zzb;->b:Lcom/google/android/gms/internal/drive/zzkk;

    return-void
.end method

###### Class com.google.android.gms.internal.drive.zzkk.zzc (com.google.android.gms.internal.drive.zzkk$zzc)
.class public abstract Lcom/google/android/gms/internal/drive/zzkk$zzc;
.super Lcom/google/android/gms/internal/drive/zzkk;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzls;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/drive/zzkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/drive/zzkk$zzc<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/drive/zzkk<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/drive/zzls;"
    }
.end annotation


# instance fields
.field protected zzrw:Lcom/google/android/gms/internal/drive/zzkb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/drive/zzkb<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzkk;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkb;->p()Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zzc;->zzrw:Lcom/google/android/gms/internal/drive/zzkb;

    return-void
.end method


# virtual methods
.method final q()Lcom/google/android/gms/internal/drive/zzkb;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/drive/zzkb<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zzc;->zzrw:Lcom/google/android/gms/internal/drive/zzkb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkb;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zzc;->zzrw:Lcom/google/android/gms/internal/drive/zzkb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkb;

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zzc;->zzrw:Lcom/google/android/gms/internal/drive/zzkb;

    .line 3
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zzc;->zzrw:Lcom/google/android/gms/internal/drive/zzkb;

    return-object v0
.end method

###### Class com.google.android.gms.internal.drive.zzkk.zzd (com.google.android.gms.internal.drive.zzkk$zzd)
.class public final Lcom/google/android/gms/internal/drive/zzkk$zzd;
.super Lcom/google/android/gms/internal/drive/zzjv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/drive/zzkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/android/gms/internal/drive/zzlq;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/drive/zzjv<",
        "TContainingType;TType;>;"
    }
.end annotation

###### Class com.google.android.gms.internal.drive.zzkk.zze (com.google.android.gms.internal.drive.zzkk$zze)
.class public final Lcom/google/android/gms/internal/drive/zzkk$zze;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/drive/zzkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zze"
.end annotation


# static fields
.field public static final enum a:I = 0x1

.field public static final enum b:I = 0x2

.field public static final enum c:I = 0x3

.field public static final enum d:I = 0x4

.field public static final enum e:I = 0x5

.field public static final enum f:I = 0x6

.field public static final enum g:I = 0x7

.field private static final synthetic h:[I

.field public static final enum i:I = 0x1

.field public static final enum j:I = 0x2

.field private static final synthetic k:[I

.field public static final enum l:I = 0x1

.field public static final enum m:I = 0x2

.field private static final synthetic n:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v4, 0x2

    aput v4, v1, v3

    const/4 v5, 0x3

    aput v5, v1, v4

    const/4 v6, 0x4

    aput v6, v1, v5

    const/4 v5, 0x5

    aput v5, v1, v6

    const/4 v6, 0x6

    aput v6, v1, v5

    aput v0, v1, v6

    sput-object v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->h:[I

    new-array v0, v4, [I

    aput v3, v0, v2

    aput v4, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/drive/zzkk$zze;->k:[I

    new-array v0, v4, [I

    aput v3, v0, v2

    aput v4, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/drive/zzkk$zze;->n:[I

    return-void
.end method

.method public static a()[I
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzkk$zze;->h:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
