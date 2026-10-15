###### Class com.google.android.gms.internal.firebase_auth.zzhs (com.google.android.gms.internal.firebase_auth.zzhs)
.class public Lcom/google/android/gms/internal/firebase_auth/zzhs;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzhs$zza;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/google/android/gms/internal/firebase_auth/zzhs;

.field private static final c:Lcom/google/android/gms/internal/firebase_auth/zzhs;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/firebase_auth/zzhs$zza;",
            "Lcom/google/android/gms/internal/firebase_auth/zzif$zzd<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzhs;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhs;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzhs;->c:Lcom/google/android/gms/internal/firebase_auth/zzhs;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhs;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhs;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/firebase_auth/zzhs;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzhs;->b:Lcom/google/android/gms/internal/firebase_auth/zzhs;

    if-nez v0, :cond_14

    .line 2
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzhs;

    monitor-enter v1

    .line 3
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzhs;->b:Lcom/google/android/gms/internal/firebase_auth/zzhs;

    if-nez v0, :cond_f

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzhs;->c:Lcom/google/android/gms/internal/firebase_auth/zzhs;

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzhs;->b:Lcom/google/android/gms/internal/firebase_auth/zzhs;

    .line 5
    :cond_f
    monitor-exit v1

    goto :goto_14

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :goto_14
    return-object v0
.end method

###### Class com.google.android.gms.internal.firebase_auth.zzhs.zza (com.google.android.gms.internal.firebase_auth.zzhs$zza)
.class final Lcom/google/android/gms/internal/firebase_auth/zzhs$zza;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzhs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzhs$zza;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzhs$zza;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhs$zza;->a:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase_auth/zzhs$zza;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_16

    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhs$zza;->b:I

    iget p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzhs$zza;->b:I

    if-ne v0, p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhs$zza;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0xffff

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhs$zza;->b:I

    add-int/2addr v0, v1

    return v0
.end method
