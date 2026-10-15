package org.parceler;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX WARN: Method from annotation default annotation not found: analyze */
/* JADX WARN: Method from annotation default annotation not found: converter */
/* JADX WARN: Method from annotation default annotation not found: describeContents */
/* JADX WARN: Method from annotation default annotation not found: implementations */
/* JADX WARN: Method from annotation default annotation not found: value */
/* JADX INFO: loaded from: classes.dex */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface Parcel {

    /* JADX INFO: loaded from: classes2.dex */
    public enum a {
        FIELD,
        BEAN,
        VALUE
    }
}
