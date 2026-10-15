###### Class com.google.android.gms.internal.auth.zzeq (com.google.android.gms.internal.auth.zzeq)
.class public abstract Lcom/google/android/gms/internal/auth/zzeq;
.super Lcom/google/android/gms/internal/auth/zzdm;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/auth/zzeq<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/auth/zzeo<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/auth/zzdm<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/auth/zzeq<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/auth/zzgq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzeq;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzdm;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgq;->a()Lcom/google/android/gms/internal/auth/zzgq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzeq;->zzc:Lcom/google/android/gms/internal/auth/zzgq;

    return-void
.end method

.method static a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzeq;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/auth/zzeq;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/auth/zzeq;->zzb:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/zzeq;

    if-nez v1, :cond_26

    .line 2
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_1d

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/zzeq;

    goto :goto_26

    :catch_1d
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    .line 5
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_26
    :goto_26
    if-nez v1, :cond_42

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzgz;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/zzeq;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/auth/zzeq;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/auth/zzeq;

    if-eqz v1, :cond_3c

    .line 8
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 9
    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_42
    :goto_42
    return-object v1
.end method

.method protected static c(Lcom/google/android/gms/internal/auth/zzeq;[B)Lcom/google/android/gms/internal/auth/zzeq;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/auth/zzeq<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/auth/zzew;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzeg;->a()Lcom/google/android/gms/internal/auth/zzeg;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/auth/zzeq;->d(Lcom/google/android/gms/internal/auth/zzeq;[BIILcom/google/android/gms/internal/auth/zzeg;)Lcom/google/android/gms/internal/auth/zzeq;

    move-result-object p0

    if-eqz p0, :cond_4d

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/gms/internal/auth/zzeq;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v1, p1, :cond_1c

    const/4 v2, 0x1

    goto :goto_38

    :cond_1c
    if-nez v1, :cond_1f

    goto :goto_38

    .line 6
    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfy;->a()Lcom/google/android/gms/internal/auth/zzfy;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/auth/zzfy;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/auth/zzgb;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eq p1, v2, :cond_33

    move-object p1, v0

    goto :goto_34

    :cond_33
    move-object p1, p0

    :goto_34
    const/4 v1, 0x2

    .line 7
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/internal/auth/zzeq;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_38
    if-eqz v2, :cond_3b

    goto :goto_4d

    .line 8
    :cond_3b
    new-instance p1, Lcom/google/android/gms/internal/auth/zzgo;

    .line 9
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/auth/zzgo;-><init>(Lcom/google/android/gms/internal/auth/zzfq;)V

    new-instance v0, Lcom/google/android/gms/internal/auth/zzew;

    .line 10
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/auth/zzew;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/auth/zzew;->e(Lcom/google/android/gms/internal/auth/zzfq;)Lcom/google/android/gms/internal/auth/zzew;

    throw v0

    :cond_4d
    :goto_4d
    return-object p0
.end method

.method static d(Lcom/google/android/gms/internal/auth/zzeq;[BIILcom/google/android/gms/internal/auth/zzeg;)Lcom/google/android/gms/internal/auth/zzeq;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/auth/zzeq<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/android/gms/internal/auth/zzeg;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/auth/zzew;
        }
    .end annotation

    const/4 p2, 0x4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p2, v0, v0}, Lcom/google/android/gms/internal/auth/zzeq;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth/zzeq;

    .line 2
    :try_start_8
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfy;->a()Lcom/google/android/gms/internal/auth/zzfy;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/auth/zzfy;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object p2

    new-instance v5, Lcom/google/android/gms/internal/auth/zzdp;

    .line 5
    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/auth/zzdp;-><init>(Lcom/google/android/gms/internal/auth/zzeg;)V

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/zzgb;->g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/zzdp;)V

    .line 6
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/auth/zzgb;->b(Ljava/lang/Object;)V

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/auth/zzdm;->zza:I

    if-nez p1, :cond_29

    return-object p0

    :cond_29
    new-instance p1, Ljava/lang/RuntimeException;

    .line 8
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_2f
    .catch Lcom/google/android/gms/internal/auth/zzew; {:try_start_8 .. :try_end_2f} :catch_50
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2f} :catch_37
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_2f} :catch_2f

    .line 9
    :catch_2f
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->f()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/auth/zzew;->e(Lcom/google/android/gms/internal/auth/zzfq;)Lcom/google/android/gms/internal/auth/zzew;

    throw p1

    :catch_37
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/auth/zzew;

    if-eqz p2, :cond_47

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth/zzew;

    throw p0

    .line 12
    :cond_47
    new-instance p2, Lcom/google/android/gms/internal/auth/zzew;

    .line 13
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/auth/zzew;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/auth/zzew;->e(Lcom/google/android/gms/internal/auth/zzfq;)Lcom/google/android/gms/internal/auth/zzew;

    throw p2

    :catch_50
    move-exception p1

    .line 14
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/auth/zzew;->e(Lcom/google/android/gms/internal/auth/zzfq;)Lcom/google/android/gms/internal/auth/zzew;

    throw p1
.end method

.method protected static g()Lcom/google/android/gms/internal/auth/zzeu;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/auth/zzeu<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfz;->g()Lcom/google/android/gms/internal/auth/zzfz;

    move-result-object v0

    return-object v0
.end method

.method static varargs h(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 7
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 8
    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_20
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 10
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static i(Lcom/google/android/gms/internal/auth/zzfq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance p1, Lcom/google/android/gms/internal/auth/zzga;

    const-string v0, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    .line 1
    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;-><init>(Lcom/google/android/gms/internal/auth/zzfq;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method protected static j(Ljava/lang/Class;Lcom/google/android/gms/internal/auth/zzeq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/auth/zzeq;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/auth/zzeq;->zzb:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Lcom/google/android/gms/internal/auth/zzfp;
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/auth/zzeq;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/auth/zzeo;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/auth/zzeo;->h(Lcom/google/android/gms/internal/auth/zzeq;)Lcom/google/android/gms/internal/auth/zzeo;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    .line 1
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfy;->a()Lcom/google/android/gms/internal/auth/zzfy;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzfy;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/auth/zzeq;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/auth/zzgb;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/internal/auth/zzfq;
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/auth/zzeq;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/auth/zzeq;

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzdm;->zza:I

    if-eqz v0, :cond_5

    return v0

    .line 1
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfy;->a()Lcom/google/android/gms/internal/auth/zzfy;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzfy;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/auth/zzgb;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/auth/zzdm;->zza:I

    return v0
.end method

.method protected abstract k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/auth/zzfs;->a(Lcom/google/android/gms/internal/auth/zzfq;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
