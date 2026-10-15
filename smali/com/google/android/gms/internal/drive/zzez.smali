###### Class com.google.android.gms.internal.drive.zzez (com.google.android.gms.internal.drive.zzez)
.class public final Lcom/google/android/gms/internal/drive/zzez;
.super Lcom/google/android/gms/internal/drive/zzkk;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzls;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/drive/zzez$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzkk<",
        "Lcom/google/android/gms/internal/drive/zzez;",
        "Lcom/google/android/gms/internal/drive/zzez$zza;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzls;"
    }
.end annotation


# static fields
.field private static final zzhj:Lcom/google/android/gms/internal/drive/zzez;

.field private static volatile zzhk:Lcom/google/android/gms/internal/drive/zzmb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/drive/zzmb<",
            "Lcom/google/android/gms/internal/drive/zzez;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzhd:I

.field private zzhe:I

.field private zzhf:J

.field private zzhg:J

.field private zzhh:J

.field private zzhi:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzez;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzez;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzez;->zzhj:Lcom/google/android/gms/internal/drive/zzez;

    .line 2
    const-class v1, Lcom/google/android/gms/internal/drive/zzez;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/drive/zzkk;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zzkk;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzkk;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhi:B

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhe:I

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhf:J

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhg:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhh:J

    return-void
.end method

.method private final q(J)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhd:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhf:J

    return-void
.end method

.method private final r(J)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhd:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhg:J

    return-void
.end method

.method static synthetic s(Lcom/google/android/gms/internal/drive/zzez;I)V
    .registers 2

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzez;->z(I)V

    return-void
.end method

.method static synthetic t(Lcom/google/android/gms/internal/drive/zzez;J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzez;->q(J)V

    return-void
.end method

.method public static u()Lcom/google/android/gms/internal/drive/zzez$zza;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzez;->zzhj:Lcom/google/android/gms/internal/drive/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk;->o()Lcom/google/android/gms/internal/drive/zzkk$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzez$zza;

    return-object v0
.end method

.method static synthetic v()Lcom/google/android/gms/internal/drive/zzez;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzez;->zzhj:Lcom/google/android/gms/internal/drive/zzez;

    return-object v0
.end method

.method private final w(J)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhd:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhh:J

    return-void
.end method

.method static synthetic x(Lcom/google/android/gms/internal/drive/zzez;J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzez;->r(J)V

    return-void
.end method

.method static synthetic y(Lcom/google/android/gms/internal/drive/zzez;J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzez;->w(J)V

    return-void
.end method

.method private final z(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhd:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhe:I

    return-void
.end method


# virtual methods
.method protected final i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    sget-object p3, Lcom/google/android/gms/internal/drive/zzfa;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_6c

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_11
    if-nez p2, :cond_14

    const/4 v0, 0x0

    :cond_14
    int-to-byte p1, v0

    .line 3
    iput-byte p1, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhi:B

    return-object v1

    .line 4
    :pswitch_18
    iget-byte p1, p0, Lcom/google/android/gms/internal/drive/zzez;->zzhi:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_1f
    sget-object p1, Lcom/google/android/gms/internal/drive/zzez;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    if-nez p1, :cond_38

    .line 6
    const-class p2, Lcom/google/android/gms/internal/drive/zzez;

    monitor-enter p2

    .line 7
    :try_start_26
    sget-object p1, Lcom/google/android/gms/internal/drive/zzez;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    if-nez p1, :cond_33

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/drive/zzkk$zzb;

    sget-object p3, Lcom/google/android/gms/internal/drive/zzez;->zzhj:Lcom/google/android/gms/internal/drive/zzez;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/drive/zzkk$zzb;-><init>(Lcom/google/android/gms/internal/drive/zzkk;)V

    .line 9
    sput-object p1, Lcom/google/android/gms/internal/drive/zzez;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    .line 10
    :cond_33
    monitor-exit p2

    goto :goto_38

    :catchall_35
    move-exception p1

    monitor-exit p2
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_35

    throw p1

    :cond_38
    :goto_38
    return-object p1

    .line 11
    :pswitch_39
    sget-object p1, Lcom/google/android/gms/internal/drive/zzez;->zzhj:Lcom/google/android/gms/internal/drive/zzez;

    return-object p1

    :pswitch_3c
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzhd"

    aput-object p2, p1, p3

    const-string p2, "zzhe"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzhf"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzhg"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzhh"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0004\u0001\u0504\u0000\u0002\u0510\u0001\u0003\u0510\u0002\u0004\u0510\u0003"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/drive/zzez;->zzhj:Lcom/google/android/gms/internal/drive/zzez;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/drive/zzkk;->j(Lcom/google/android/gms/internal/drive/zzlq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5f
    new-instance p1, Lcom/google/android/gms/internal/drive/zzez$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/drive/zzez$zza;-><init>(Lcom/google/android/gms/internal/drive/zzfa;)V

    return-object p1

    .line 14
    :pswitch_65
    new-instance p1, Lcom/google/android/gms/internal/drive/zzez;

    invoke-direct {p1}, Lcom/google/android/gms/internal/drive/zzez;-><init>()V

    return-object p1

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_65
        :pswitch_5f
        :pswitch_3c
        :pswitch_39
        :pswitch_1f
        :pswitch_18
        :pswitch_11
    .end packed-switch
.end method

###### Class com.google.android.gms.internal.drive.zzez.zza (com.google.android.gms.internal.drive.zzez$zza)
.class public final Lcom/google/android/gms/internal/drive/zzez$zza;
.super Lcom/google/android/gms/internal/drive/zzkk$zza;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzls;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/drive/zzez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzkk$zza<",
        "Lcom/google/android/gms/internal/drive/zzez;",
        "Lcom/google/android/gms/internal/drive/zzez$zza;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzls;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzez;->v()Lcom/google/android/gms/internal/drive/zzez;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;-><init>(Lcom/google/android/gms/internal/drive/zzkk;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzfa;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzez$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final o(J)Lcom/google/android/gms/internal/drive/zzez$zza;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->l()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    check-cast v0, Lcom/google/android/gms/internal/drive/zzez;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzez;->t(Lcom/google/android/gms/internal/drive/zzez;J)V

    return-object p0
.end method

.method public final p(J)Lcom/google/android/gms/internal/drive/zzez$zza;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->l()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    check-cast v0, Lcom/google/android/gms/internal/drive/zzez;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzez;->x(Lcom/google/android/gms/internal/drive/zzez;J)V

    return-object p0
.end method

.method public final q(J)Lcom/google/android/gms/internal/drive/zzez$zza;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->l()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    check-cast v0, Lcom/google/android/gms/internal/drive/zzez;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzez;->y(Lcom/google/android/gms/internal/drive/zzez;J)V

    return-object p0
.end method

.method public final r(I)Lcom/google/android/gms/internal/drive/zzez$zza;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->l()V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    check-cast p1, Lcom/google/android/gms/internal/drive/zzez;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/drive/zzez;->s(Lcom/google/android/gms/internal/drive/zzez;I)V

    return-object p0
.end method
