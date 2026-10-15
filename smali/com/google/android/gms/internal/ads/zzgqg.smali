###### Class com.google.android.gms.internal.ads.zzgqg (com.google.android.gms.internal.ads.zzgqg)
.class abstract Lcom/google/android/gms/internal/ads/zzgqg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgpt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqg;->a:Ljava/util/logging/Logger;

    const-string v0, "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader"

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqg;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgpy;
    .registers 12

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgqg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgpy;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_13

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgqg;->b:Ljava/lang/String;

    goto :goto_3a

    .line 3
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, "%s.BlazeGenerated%sLoader"

    .line 7
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8
    :goto_3a
    :try_start_3a
    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_3e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3a .. :try_end_3e} :catch_73

    :try_start_3e
    new-array v5, v4, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgqg;
    :try_end_4c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3e .. :try_end_4c} :catch_6c
    .catch Ljava/lang/InstantiationException; {:try_start_3e .. :try_end_4c} :catch_65
    .catch Ljava/lang/IllegalAccessException; {:try_start_3e .. :try_end_4c} :catch_5e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3e .. :try_end_4c} :catch_57
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3e .. :try_end_4c} :catch_73

    .line 10
    :try_start_4c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqg;->a()Lcom/google/android/gms/internal/ads/zzgpy;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgpy;

    return-object v1

    :catch_57
    move-exception v1

    .line 11
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 12
    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_5e
    move-exception v1

    .line 13
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 14
    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_65
    move-exception v1

    .line 15
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 16
    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_6c
    move-exception v1

    .line 17
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 18
    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_73
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4c .. :try_end_73} :catch_73

    .line 19
    :catch_73
    invoke-static {v0, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    :goto_80
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 23
    :try_start_86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgqg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqg;->a()Lcom/google/android/gms/internal/ads/zzgpy;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgpy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_99
    .catch Ljava/util/ServiceConfigurationError; {:try_start_86 .. :try_end_99} :catch_9a

    goto :goto_80

    :catch_9a
    move-exception v2

    move-object v10, v2

    .line 24
    sget-object v5, Lcom/google/android/gms/internal/ads/zzgqg;->a:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v7, "Unable to load "

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "com.google.protobuf.GeneratedExtensionRegistryLoader"

    const-string v8, "load"

    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_80

    .line 26
    :cond_b2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_bf

    .line 27
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgpy;

    return-object p0

    .line 28
    :cond_bf
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_c7

    return-object v2

    :cond_c7
    :try_start_c7
    const-string v0, "combine"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/util/Collection;

    aput-object v6, v5, v4

    .line 29
    invoke-virtual {p0, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v4

    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgpy;
    :try_end_dd
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c7 .. :try_end_dd} :catch_ec
    .catch Ljava/lang/IllegalAccessException; {:try_start_c7 .. :try_end_dd} :catch_e5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c7 .. :try_end_dd} :catch_de

    return-object p0

    :catch_de
    move-exception p0

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_e5
    move-exception p0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_ec
    move-exception p0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 36
    :cond_f3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_fe

    :goto_fd
    throw v0

    :goto_fe
    goto :goto_fd
.end method


# virtual methods
.method protected abstract a()Lcom/google/android/gms/internal/ads/zzgpy;
.end method
