###### Class j0.e (j0.e)
.class synthetic Lj0/e;
.super Ljava/lang/Object;
.source "PreferencesProto.java"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/y$f;->values()[Landroidx/datastore/preferences/protobuf/y$f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lj0/e;->a:[I

    :try_start_9
    sget-object v1, Landroidx/datastore/preferences/protobuf/y$f;->r:Landroidx/datastore/preferences/protobuf/y$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lj0/e;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/y$f;->s:Landroidx/datastore/preferences/protobuf/y$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lj0/e;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/y$f;->q:Landroidx/datastore/preferences/protobuf/y$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lj0/e;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/y$f;->t:Landroidx/datastore/preferences/protobuf/y$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lj0/e;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/y$f;->u:Landroidx/datastore/preferences/protobuf/y$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lj0/e;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/y$f;->o:Landroidx/datastore/preferences/protobuf/y$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lj0/e;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/y$f;->p:Landroidx/datastore/preferences/protobuf/y$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    return-void
.end method
