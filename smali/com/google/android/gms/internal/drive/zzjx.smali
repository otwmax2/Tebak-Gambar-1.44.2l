###### Class com.google.android.gms.internal.drive.zzjx (com.google.android.gms.internal.drive.zzjx)
.class public Lcom/google/android/gms/internal/drive/zzjx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/drive/zzjx$zza;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final c:Lcom/google/android/gms/internal/drive/zzjx;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/drive/zzjx$zza;",
            "Lcom/google/android/gms/internal/drive/zzkk$zzd<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzjx;->a()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/drive/zzjx;->b:Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/drive/zzjx;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzjx;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzjx;->c:Lcom/google/android/gms/internal/drive/zzjx;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzjx;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzjx;->a:Ljava/util/Map;

    return-void
.end method

.method private static a()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.Extension"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/drive/zzjx;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzjw;->b()Lcom/google/android/gms/internal/drive/zzjx;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.drive.zzjx.zza (com.google.android.gms.internal.drive.zzjx$zza)
.class final Lcom/google/android/gms/internal/drive/zzjx$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/drive/zzjx;
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
    instance-of v0, p1, Lcom/google/android/gms/internal/drive/zzjx$zza;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/drive/zzjx$zza;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjx$zza;->a:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/drive/zzjx$zza;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_16

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjx$zza;->b:I

    iget p1, p1, Lcom/google/android/gms/internal/drive/zzjx$zza;->b:I

    if-ne v0, p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjx$zza;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0xffff

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjx$zza;->b:I

    add-int/2addr v0, v1

    return v0
.end method
