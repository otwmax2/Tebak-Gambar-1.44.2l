###### Class com.google.android.gms.internal.firebase_auth.zzif (com.google.android.gms.internal.firebase_auth.zzif)
.class public abstract Lcom/google/android/gms/internal/firebase_auth/zzif;
.super Lcom/google/android/gms/internal/firebase_auth/zzgn;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;,
        Lcom/google/android/gms/internal/firebase_auth/zzif$zzd;,
        Lcom/google/android/gms/internal/firebase_auth/zzif$zze;,
        Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;,
        Lcom/google/android/gms/internal/firebase_auth/zzif$zza;,
        Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/firebase_auth/zzif$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/firebase_auth/zzgn<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/firebase_auth/zzif<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzb:Lcom/google/android/gms/internal/firebase_auth/zzky;

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgn;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzky;->a()Lcom/google/android/gms/internal/firebase_auth/zzky;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzky;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzc:I

    return-void
.end method

.method static h(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_auth/zzif;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase_auth/zzif<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

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
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

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
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    .line 6
    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->f:I

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzif;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    if-eqz v0, :cond_41

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzd:Ljava/util/Map;

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

.method protected static j(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzkb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkb;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;[Ljava/lang/Object;)V

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

.method protected static l(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzif;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase_auth/zzif<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final m(Lcom/google/android/gms/internal/firebase_auth/zzif;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase_auth/zzif<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->a:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->a()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_2d

    .line 5
    sget p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->b:I

    if-eqz v0, :cond_29

    move-object v2, p0

    goto :goto_2a

    :cond_29
    move-object v2, v1

    .line 6
    :goto_2a
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    return v0
.end method

.method protected static n()Lcom/google/android/gms/internal/firebase_auth/zzim;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzig;->j()Lcom/google/android/gms/internal/firebase_auth/zzig;

    move-result-object v0

    return-object v0
.end method

.method protected static o()Lcom/google/android/gms/internal/firebase_auth/zzio;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/firebase_auth/zzio<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzkc;->j()Lcom/google/android/gms/internal/firebase_auth/zzkc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzc:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->a()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->c(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzc:I

    .line 3
    :cond_13
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzc:I

    return v0
.end method

.method public final synthetic R()Lcom/google/android/gms/internal/firebase_auth/zzjq;
    .registers 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->e:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->h(Lcom/google/android/gms/internal/firebase_auth/zzif;)Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    return-object v0
.end method

.method public final synthetic a()Lcom/google/android/gms/internal/firebase_auth/zzjn;
    .registers 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->f:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->m(Lcom/google/android/gms/internal/firebase_auth/zzif;Z)Z

    move-result v0

    return v0
.end method

.method public final d(Lcom/google/android/gms/internal/firebase_auth/zzhm;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->a()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhp;->M(Lcom/google/android/gms/internal/firebase_auth/zzhm;)Lcom/google/android/gms/internal/firebase_auth/zzhp;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->g(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 1
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    .line 2
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->a()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final f(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzc:I

    return-void
.end method

.method final g()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzc:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgn;->zza:I

    if-eqz v0, :cond_5

    return v0

    .line 2
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->a()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgn;->zza:I

    return v0
.end method

.method protected abstract i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjs;->a(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.firebase_auth.zzif.zza (com.google.android.gms.internal.firebase_auth.zzif$zza)
.class public Lcom/google/android/gms/internal/firebase_auth/zzif$zza;
.super Lcom/google/android/gms/internal/firebase_auth/zzgm;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/firebase_auth/zzif$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/firebase_auth/zzgm<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/internal/firebase_auth/zzif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected p:Lcom/google/android/gms/internal/firebase_auth/zzif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected q:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgm;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->o:Lcom/google/android/gms/internal/firebase_auth/zzif;

    .line 3
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->d:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->p:Lcom/google/android/gms/internal/firebase_auth/zzif;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->q:Z

    return-void
.end method

.method private static i(Lcom/google/android/gms/internal/firebase_auth/zzif;Lcom/google/android/gms/internal/firebase_auth/zzif;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->a()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/android/gms/internal/firebase_auth/zzjn;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->o:Lcom/google/android/gms/internal/firebase_auth/zzif;

    return-object v0
.end method

.method public synthetic c()Lcom/google/android/gms/internal/firebase_auth/zzjn;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->k()Lcom/google/android/gms/internal/firebase_auth/zzif;

    move-result-object v0

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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->o:Lcom/google/android/gms/internal/firebase_auth/zzif;

    .line 2
    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->e:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzif;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->c()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zzif;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->h(Lcom/google/android/gms/internal/firebase_auth/zzif;)Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    return-object v0
.end method

.method public synthetic e()Lcom/google/android/gms/internal/firebase_auth/zzjn;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->l()Lcom/google/android/gms/internal/firebase_auth/zzif;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/google/android/gms/internal/firebase_auth/zzgm;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    return-object v0
.end method

.method protected final synthetic g(Lcom/google/android/gms/internal/firebase_auth/zzgn;)Lcom/google/android/gms/internal/firebase_auth/zzgm;
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->h(Lcom/google/android/gms/internal/firebase_auth/zzif;)Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lcom/google/android/gms/internal/firebase_auth/zzif;)Lcom/google/android/gms/internal/firebase_auth/zzif$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->q:Z

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->j()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->q:Z

    .line 4
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->p:Lcom/google/android/gms/internal/firebase_auth/zzif;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->i(Lcom/google/android/gms/internal/firebase_auth/zzif;Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-object p0
.end method

.method protected j()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->p:Lcom/google/android/gms/internal/firebase_auth/zzif;

    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->d:I

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzif;->i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->p:Lcom/google/android/gms/internal/firebase_auth/zzif;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->i(Lcom/google/android/gms/internal/firebase_auth/zzif;Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->p:Lcom/google/android/gms/internal/firebase_auth/zzif;

    return-void
.end method

.method public k()Lcom/google/android/gms/internal/firebase_auth/zzif;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->q:Z

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->p:Lcom/google/android/gms/internal/firebase_auth/zzif;

    return-object v0

    .line 3
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->p:Lcom/google/android/gms/internal/firebase_auth/zzif;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->a()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->q:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->p:Lcom/google/android/gms/internal/firebase_auth/zzif;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/firebase_auth/zzif;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif$zza;->c()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    .line 3
    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzkx;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzkx;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzjn;)V

    .line 4
    throw v1
.end method

###### Class com.google.android.gms.internal.firebase_auth.zzif.zzb (com.google.android.gms.internal.firebase_auth.zzif$zzb)
.class public abstract Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;
.super Lcom/google/android/gms/internal/firebase_auth/zzif;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase_auth/zzif$zzb<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/firebase_auth/zzhv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzhv<",
            "Lcom/google/android/gms/internal/firebase_auth/zzif$zze;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->c()Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzhv;

    return-void
.end method

###### Class com.google.android.gms.internal.firebase_auth.zzif.zzc (com.google.android.gms.internal.firebase_auth.zzif$zzc)
.class public final Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;
.super Lcom/google/android/gms/internal/firebase_auth/zzgo;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/firebase_auth/zzgo<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/internal/firebase_auth/zzif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;->b:Lcom/google/android/gms/internal/firebase_auth/zzif;

    return-void
.end method

###### Class com.google.android.gms.internal.firebase_auth.zzif.zzd (com.google.android.gms.internal.firebase_auth.zzif$zzd)
.class public final Lcom/google/android/gms/internal/firebase_auth/zzif$zzd;
.super Lcom/google/android/gms/internal/firebase_auth/zzhq;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/android/gms/internal/firebase_auth/zzjn;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase_auth/zzhq<",
        "TContainingType;TType;>;"
    }
.end annotation

###### Class com.google.android.gms.internal.firebase_auth.zzif.zze (com.google.android.gms.internal.firebase_auth.zzif$zze)
.class final Lcom/google/android/gms/internal/firebase_auth/zzif$zze;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzhx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_auth/zzhx<",
        "Lcom/google/android/gms/internal/firebase_auth/zzif$zze;",
        ">;"
    }
.end annotation


# virtual methods
.method public final D(Lcom/google/android/gms/internal/firebase_auth/zzjt;Lcom/google/android/gms/internal/firebase_auth/zzjt;)Lcom/google/android/gms/internal/firebase_auth/zzjt;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final a()Lcom/google/android/gms/internal/firebase_auth/zzlt;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public final b()Z
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final d()Z
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public final v(Lcom/google/android/gms/internal/firebase_auth/zzjq;Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/android/gms/internal/firebase_auth/zzjq;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final zza()I
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase_auth/zzlm;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

###### Class com.google.android.gms.internal.firebase_auth.zzif.zzf (com.google.android.gms.internal.firebase_auth.zzif$zzf)
.class public final Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzf"
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

    sput-object v1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->h:[I

    new-array v0, v4, [I

    aput v3, v0, v2

    aput v4, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->k:[I

    new-array v0, v4, [I

    aput v3, v0, v2

    aput v4, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->n:[I

    return-void
.end method

.method public static a()[I
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->h:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
