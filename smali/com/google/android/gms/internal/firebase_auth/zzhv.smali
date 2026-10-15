###### Class com.google.android.gms.internal.firebase_auth.zzhv (com.google.android.gms.internal.firebase_auth.zzhv)
.class final Lcom/google/android/gms/internal/firebase_auth/zzhv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/firebase_auth/zzhx<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Lcom/google/android/gms/internal/firebase_auth/zzhv;


# instance fields
.field final a:Lcom/google/android/gms/internal/firebase_auth/zzki;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzki<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzhv;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->d:Lcom/google/android/gms/internal/firebase_auth/zzhv;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzki;->b(I)Lcom/google/android/gms/internal/firebase_auth/zzki;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzki;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_auth/zzki<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->k()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->b(I)Lcom/google/android/gms/internal/firebase_auth/zzki;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzki;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->k()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/firebase_auth/zzhx;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_auth/zzhx<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzlm;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->zza()I

    move-result v1

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->d()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->b()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_36

    .line 5
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->j(Lcom/google/android/gms/internal/firebase_auth/zzlm;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1b

    .line 7
    :cond_2b
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->E0(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 9
    :cond_36
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->b(Lcom/google/android/gms/internal/firebase_auth/zzlm;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_3c

    :cond_4c
    return v2

    .line 11
    :cond_4d
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->b(Lcom/google/android/gms/internal/firebase_auth/zzlm;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static b(Lcom/google/android/gms/internal/firebase_auth/zzlm;ILjava/lang/Object;)I
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result p1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzlm;->z:Lcom/google/android/gms/internal/firebase_auth/zzlm;

    if-ne p0, v0, :cond_10

    .line 3
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzii;->g(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Z

    shl-int/lit8 p1, p1, 0x1

    .line 4
    :cond_10
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->j(Lcom/google/android/gms/internal/firebase_auth/zzlm;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static c()Lcom/google/android/gms/internal/firebase_auth/zzhv;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/firebase_auth/zzhx<",
            "TT;>;>()",
            "Lcom/google/android/gms/internal/firebase_auth/zzhv<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->d:Lcom/google/android/gms/internal/firebase_auth/zzhv;

    return-object v0
.end method

.method private final d(Lcom/google/android/gms/internal/firebase_auth/zzhx;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzis;

    if-eqz v0, :cond_10

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzis;

    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzis;->e()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object p1

    :cond_10
    return-object p1
.end method

.method private static e(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjt;

    if-eqz v0, :cond_b

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/firebase_auth/zzjt;

    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase_auth/zzjt;->zza()Lcom/google/android/gms/internal/firebase_auth/zzjt;

    move-result-object p0

    return-object p0

    .line 3
    :cond_b
    instance-of v0, p0, [B

    if-eqz v0, :cond_1a

    .line 4
    check-cast p0, [B

    .line 5
    array-length v0, p0

    new-array v0, v0, [B

    .line 6
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1a
    return-object p0
.end method

.method static f(Lcom/google/android/gms/internal/firebase_auth/zzhm;Lcom/google/android/gms/internal/firebase_auth/zzlm;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzlm;->z:Lcom/google/android/gms/internal/firebase_auth/zzlm;

    if-ne p1, v0, :cond_15

    .line 2
    check-cast p3, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    invoke-static {p3}, Lcom/google/android/gms/internal/firebase_auth/zzii;->g(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Z

    const/4 p1, 0x3

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    .line 4
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/firebase_auth/zzjn;->d(Lcom/google/android/gms/internal/firebase_auth/zzhm;)V

    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    return-void

    .line 6
    :cond_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzlm;->e()I

    move-result v0

    .line 7
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m(II)V

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzhy;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_f2

    goto/16 :goto_f1

    .line 9
    :pswitch_29
    instance-of p1, p3, Lcom/google/android/gms/internal/firebase_auth/zzih;

    if-eqz p1, :cond_37

    .line 10
    check-cast p3, Lcom/google/android/gms/internal/firebase_auth/zzih;

    invoke-interface {p3}, Lcom/google/android/gms/internal/firebase_auth/zzih;->zza()I

    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->j(I)V

    return-void

    .line 12
    :cond_37
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->j(I)V

    goto/16 :goto_f1

    .line 14
    :pswitch_42
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->S(J)V

    return-void

    .line 15
    :pswitch_4c
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->X(I)V

    return-void

    .line 16
    :pswitch_56
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->a0(J)V

    return-void

    .line 18
    :pswitch_60
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->f0(I)V

    return-void

    .line 20
    :pswitch_6a
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->O(I)V

    return-void

    .line 21
    :pswitch_74
    instance-of p1, p3, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz p1, :cond_7e

    .line 22
    check-cast p3, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->u(Lcom/google/android/gms/internal/firebase_auth/zzgv;)V

    return-void

    .line 23
    :cond_7e
    check-cast p3, [B

    const/4 p1, 0x0

    .line 24
    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->T([BII)V

    return-void

    .line 25
    :pswitch_86
    instance-of p1, p3, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz p1, :cond_90

    .line 26
    check-cast p3, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->u(Lcom/google/android/gms/internal/firebase_auth/zzgv;)V

    return-void

    .line 27
    :cond_90
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->w(Ljava/lang/String;)V

    return-void

    .line 28
    :pswitch_96
    check-cast p3, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->v(Lcom/google/android/gms/internal/firebase_auth/zzjn;)V

    return-void

    .line 29
    :pswitch_9c
    check-cast p3, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 30
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/firebase_auth/zzjn;->d(Lcom/google/android/gms/internal/firebase_auth/zzhm;)V

    return-void

    .line 31
    :pswitch_a2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->y(Z)V

    return-void

    .line 32
    :pswitch_ac
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->f0(I)V

    return-void

    .line 33
    :pswitch_b6
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->a0(J)V

    return-void

    .line 34
    :pswitch_c0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->j(I)V

    return-void

    .line 35
    :pswitch_ca
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->t(J)V

    return-void

    .line 36
    :pswitch_d4
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->t(J)V

    return-void

    .line 38
    :pswitch_de
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->i(F)V

    return-void

    .line 39
    :pswitch_e8
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h(D)V

    :goto_f1
    return-void

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_e8
        :pswitch_de
        :pswitch_d4
        :pswitch_ca
        :pswitch_c0
        :pswitch_b6
        :pswitch_ac
        :pswitch_a2
        :pswitch_9c
        :pswitch_96
        :pswitch_86
        :pswitch_74
        :pswitch_6a
        :pswitch_60
        :pswitch_56
        :pswitch_4c
        :pswitch_42
        :pswitch_29
    .end packed-switch
.end method

.method private static h(Lcom/google/android/gms/internal/firebase_auth/zzlm;Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzii;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzhy;->a:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzlm;->c()Lcom/google/android/gms/internal/firebase_auth/zzlt;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_50

    :cond_14
    const/4 v0, 0x0

    goto :goto_42

    .line 3
    :pswitch_16
    instance-of p0, p1, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    if-nez p0, :cond_42

    instance-of p0, p1, Lcom/google/android/gms/internal/firebase_auth/zzis;

    if-eqz p0, :cond_14

    goto :goto_42

    .line 4
    :pswitch_1f
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_42

    instance-of p0, p1, Lcom/google/android/gms/internal/firebase_auth/zzih;

    if-eqz p0, :cond_14

    goto :goto_42

    .line 5
    :pswitch_28
    instance-of p0, p1, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-nez p0, :cond_42

    instance-of p0, p1, [B

    if-eqz p0, :cond_14

    goto :goto_42

    .line 6
    :pswitch_31
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_42

    .line 7
    :pswitch_34
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_42

    .line 8
    :pswitch_37
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_42

    .line 9
    :pswitch_3a
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_42

    .line 10
    :pswitch_3d
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_42

    .line 11
    :pswitch_40
    instance-of v0, p1, Ljava/lang/Integer;

    :cond_42
    :goto_42
    if-eqz v0, :cond_45

    return-void

    .line 12
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4e

    :goto_4d
    throw p0

    :goto_4e
    goto :goto_4d

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_28
        :pswitch_1f
        :pswitch_16
    .end packed-switch
.end method

.method private static i(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/firebase_auth/zzhx<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzhx;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->a()Lcom/google/android/gms/internal/firebase_auth/zzlt;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase_auth/zzlt;->x:Lcom/google/android/gms/internal/firebase_auth/zzlt;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_51

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzjp;->b()Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    .line 6
    :cond_33
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 7
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    if-eqz v0, :cond_44

    .line 8
    check-cast p0, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase_auth/zzjp;->b()Z

    move-result p0

    if-nez p0, :cond_51

    return v1

    .line 9
    :cond_44
    instance-of p0, p0, Lcom/google/android/gms/internal/firebase_auth/zzis;

    if-eqz p0, :cond_49

    return v3

    .line 10
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_51
    return v3
.end method

.method private static j(Lcom/google/android/gms/internal/firebase_auth/zzlm;Ljava/lang/Object;)I
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzhy;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_fa

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_13
    instance-of p0, p1, Lcom/google/android/gms/internal/firebase_auth/zzih;

    if-eqz p0, :cond_22

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzih;

    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_auth/zzih;->zza()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->C0(I)I

    move-result p0

    return p0

    .line 5
    :cond_22
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->C0(I)I

    move-result p0

    return p0

    .line 6
    :pswitch_2d
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->o0(J)I

    move-result p0

    return p0

    .line 7
    :pswitch_38
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->t0(I)I

    move-result p0

    return p0

    .line 8
    :pswitch_43
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->w0(J)I

    move-result p0

    return p0

    .line 9
    :pswitch_4e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->A0(I)I

    move-result p0

    return p0

    .line 10
    :pswitch_59
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result p0

    return p0

    .line 11
    :pswitch_64
    instance-of p0, p1, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz p0, :cond_6f

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->I(Lcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result p0

    return p0

    .line 13
    :cond_6f
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->M([B)I

    move-result p0

    return p0

    .line 14
    :pswitch_76
    instance-of p0, p1, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz p0, :cond_81

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->I(Lcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result p0

    return p0

    .line 16
    :cond_81
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->K(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 17
    :pswitch_88
    instance-of p0, p1, Lcom/google/android/gms/internal/firebase_auth/zzis;

    if-eqz p0, :cond_93

    .line 18
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzis;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->d(Lcom/google/android/gms/internal/firebase_auth/zziw;)I

    move-result p0

    return p0

    .line 19
    :cond_93
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->J(Lcom/google/android/gms/internal/firebase_auth/zzjn;)I

    move-result p0

    return p0

    .line 20
    :pswitch_9a
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->W(Lcom/google/android/gms/internal/firebase_auth/zzjn;)I

    move-result p0

    return p0

    .line 21
    :pswitch_a1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->L(Z)I

    move-result p0

    return p0

    .line 22
    :pswitch_ac
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->x0(I)I

    move-result p0

    return p0

    .line 23
    :pswitch_b7
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->s0(J)I

    move-result p0

    return p0

    .line 24
    :pswitch_c2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->l0(I)I

    move-result p0

    return p0

    .line 25
    :pswitch_cd
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->j0(J)I

    move-result p0

    return p0

    .line 26
    :pswitch_d8
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->e0(J)I

    move-result p0

    return p0

    .line 27
    :pswitch_e3
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->A(F)I

    move-result p0

    return p0

    .line 28
    :pswitch_ee
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->z(D)I

    move-result p0

    return p0

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_ee
        :pswitch_e3
        :pswitch_d8
        :pswitch_cd
        :pswitch_c2
        :pswitch_b7
        :pswitch_ac
        :pswitch_a1
        :pswitch_9a
        :pswitch_88
        :pswitch_76
        :pswitch_64
        :pswitch_59
        :pswitch_4e
        :pswitch_43
        :pswitch_38
        :pswitch_2d
        :pswitch_13
    .end packed-switch
.end method

.method private final l(Lcom/google/android/gms/internal/firebase_auth/zzhx;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->d()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2b

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_19
    if-ge v1, p2, :cond_29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzlm;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->h(Lcom/google/android/gms/internal/firebase_auth/zzlm;Ljava/lang/Object;)V

    goto :goto_19

    :cond_29
    move-object p2, v0

    goto :goto_3a

    .line 7
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_33
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzlm;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->h(Lcom/google/android/gms/internal/firebase_auth/zzlm;Ljava/lang/Object;)V

    .line 9
    :goto_3a
    instance-of v0, p2, Lcom/google/android/gms/internal/firebase_auth/zzis;

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->c:Z

    .line 11
    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzki;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final m(Ljava/util/Map$Entry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzhx;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v1, p1, Lcom/google/android/gms/internal/firebase_auth/zzis;

    if-eqz v1, :cond_14

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzis;

    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzis;->e()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object p1

    .line 5
    :cond_14
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->d()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->d(Lcom/google/android/gms/internal/firebase_auth/zzhx;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_25
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 10
    :cond_40
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 11
    :cond_46
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->a()Lcom/google/android/gms/internal/firebase_auth/zzlt;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase_auth/zzlt;->x:Lcom/google/android/gms/internal/firebase_auth/zzlt;

    if-ne v1, v2, :cond_81

    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->d(Lcom/google/android/gms/internal/firebase_auth/zzhx;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5e

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 14
    :cond_5e
    instance-of v2, v1, Lcom/google/android/gms/internal/firebase_auth/zzjt;

    if-eqz v2, :cond_6b

    .line 15
    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zzjt;

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzjt;

    .line 16
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->D(Lcom/google/android/gms/internal/firebase_auth/zzjt;Lcom/google/android/gms/internal/firebase_auth/zzjt;)Lcom/google/android/gms/internal/firebase_auth/zzjt;

    move-result-object p1

    goto :goto_7b

    .line 17
    :cond_6b
    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 18
    invoke-interface {v1}, Lcom/google/android/gms/internal/firebase_auth/zzjn;->R()Lcom/google/android/gms/internal/firebase_auth/zzjq;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->v(Lcom/google/android/gms/internal/firebase_auth/zzjq;Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/android/gms/internal/firebase_auth/zzjq;

    move-result-object p1

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_auth/zzjq;->e()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object p1

    .line 20
    :goto_7b
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 21
    :cond_81
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static n(Ljava/util/Map$Entry;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzhx;

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->a()Lcom/google/android/gms/internal/firebase_auth/zzlt;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase_auth/zzlt;->x:Lcom/google/android/gms/internal/firebase_auth/zzlt;

    if-ne v2, v3, :cond_44

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->d()Z

    move-result v2

    if-nez v2, :cond_44

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->b()Z

    move-result v2

    if-nez v2, :cond_44

    .line 6
    instance-of v0, v1, Lcom/google/android/gms/internal/firebase_auth/zzis;

    if-eqz v0, :cond_33

    .line 7
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_auth/zzhx;

    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zzis;

    .line 8
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->D(ILcom/google/android/gms/internal/firebase_auth/zziw;)I

    move-result p0

    return p0

    .line 9
    :cond_33
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_auth/zzhx;

    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 10
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->E(ILcom/google/android/gms/internal/firebase_auth/zzjn;)I

    move-result p0

    return p0

    .line 11
    :cond_44
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a(Lcom/google/android/gms/internal/firebase_auth/zzhx;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzhv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_auth/zzki;->l()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->j(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase_auth/zzhx;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->l(Lcom/google/android/gms/internal/firebase_auth/zzhx;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 5
    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->o()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase_auth/zzhx;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->l(Lcom/google/android/gms/internal/firebase_auth/zzhx;Ljava/lang/Object;)V

    goto :goto_2e

    .line 7
    :cond_48
    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->c:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->c:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzhv;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzhv;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g(Lcom/google/android/gms/internal/firebase_auth/zzhv;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_auth/zzhv<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p1, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->l()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzki;->j(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->m(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3
    :cond_15
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->o()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->m(Ljava/util/Map$Entry;)V

    goto :goto_1f

    :cond_2f
    return-void
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzki;->hashCode()I

    move-result v0

    return v0
.end method

.method public final k()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->b:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzki;->e()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->b:Z

    return-void
.end method

.method public final o()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->b:Z

    return v0
.end method

.method public final p()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->c:Z

    if-eqz v0, :cond_14

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzit;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzit;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 3
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzki;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final q()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->c:Z

    if-eqz v0, :cond_14

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzit;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->q()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzit;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 3
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzki;->q()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final r()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_auth/zzki;->l()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->j(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->i(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3
    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->o()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->i(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_24

    return v0

    :cond_37
    const/4 v0, 0x1

    return v0
.end method

.method public final s()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_auth/zzki;->l()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzki;->j(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->n(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzki;->o()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->n(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_22

    :cond_34
    return v1
.end method
