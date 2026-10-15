###### Class v1.i (v1.i)
.class public final enum Lv1/i;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv1/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lv1/i;

.field public static final enum p:Lv1/i;

.field public static final enum q:Lv1/i;

.field public static final enum r:Lv1/i;

.field public static final enum s:Lv1/i;

.field private static final synthetic t:[Lv1/i;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Lv1/i;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lv1/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv1/i;->o:Lv1/i;

    .line 2
    new-instance v1, Lv1/i;

    const-string v3, "HIGH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lv1/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lv1/i;->p:Lv1/i;

    .line 3
    new-instance v3, Lv1/i;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lv1/i;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lv1/i;->q:Lv1/i;

    .line 4
    new-instance v5, Lv1/i;

    const-string v7, "LOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lv1/i;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lv1/i;->r:Lv1/i;

    new-instance v7, Lv1/i;

    const-string v9, "priority"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lv1/i;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lv1/i;->s:Lv1/i;

    const/4 v9, 0x5

    new-array v9, v9, [Lv1/i;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 5
    sput-object v9, Lv1/i;->t:[Lv1/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv1/i;
    .registers 2

    .line 1
    const-class v0, Lv1/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv1/i;

    return-object p0
.end method

.method public static values()[Lv1/i;
    .registers 1

    .line 1
    sget-object v0, Lv1/i;->t:[Lv1/i;

    invoke-virtual {v0}, [Lv1/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv1/i;

    return-object v0
.end method
