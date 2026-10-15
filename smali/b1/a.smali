###### Class b1.a (b1.a)
.class public final Lb1/a;
.super Ljava/lang/Object;
.source "SimpleSQLiteQuery.java"

# interfaces
.implements Lb1/j;


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lb1/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb1/a;->o:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lb1/a;->p:[Ljava/lang/Object;

    return-void
.end method

.method private static a(Lb1/i;ILjava/lang/Object;)V
    .registers 5

    if-nez p2, :cond_7

    .line 1
    invoke-interface {p0, p1}, Lb1/i;->z2(I)V

    goto/16 :goto_89

    .line 2
    :cond_7
    instance-of v0, p2, [B

    if-eqz v0, :cond_12

    .line 3
    check-cast p2, [B

    invoke-interface {p0, p1, p2}, Lb1/i;->D1(I[B)V

    goto/16 :goto_89

    .line 4
    :cond_12
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_22

    .line 5
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v0, p2

    invoke-interface {p0, p1, v0, v1}, Lb1/i;->L0(ID)V

    goto/16 :goto_89

    .line 6
    :cond_22
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_30

    .line 7
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lb1/i;->L0(ID)V

    goto :goto_89

    .line 8
    :cond_30
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3e

    .line 9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lb1/i;->s1(IJ)V

    goto :goto_89

    .line 10
    :cond_3e
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_4d

    .line 11
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v0, p2

    invoke-interface {p0, p1, v0, v1}, Lb1/i;->s1(IJ)V

    goto :goto_89

    .line 12
    :cond_4d
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_5c

    .line 13
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    int-to-long v0, p2

    invoke-interface {p0, p1, v0, v1}, Lb1/i;->s1(IJ)V

    goto :goto_89

    .line 14
    :cond_5c
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_6b

    .line 15
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    int-to-long v0, p2

    invoke-interface {p0, p1, v0, v1}, Lb1/i;->s1(IJ)V

    goto :goto_89

    .line 16
    :cond_6b
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_75

    .line 17
    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lb1/i;->k0(ILjava/lang/String;)V

    goto :goto_89

    .line 18
    :cond_75
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_8a

    .line 19
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_84

    const-wide/16 v0, 0x1

    goto :goto_86

    :cond_84
    const-wide/16 v0, 0x0

    :goto_86
    invoke-interface {p0, p1, v0, v1}, Lb1/i;->s1(IJ)V

    :goto_89
    return-void

    .line 20
    :cond_8a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot bind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " at index "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Supported types: null, byte[], float, double, long, int, short, byte, string"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Lb1/i;[Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_f

    .line 2
    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-static {p0, v1, v2}, Lb1/a;->a(Lb1/i;ILjava/lang/Object;)V

    goto :goto_5

    :cond_f
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lb1/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lb1/i;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lb1/a;->p:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lb1/a;->d(Lb1/i;[Ljava/lang/Object;)V

    return-void
.end method
