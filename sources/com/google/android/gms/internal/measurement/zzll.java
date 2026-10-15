package com.google.android.gms.internal.measurement;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.vungle.mediation.BuildConfig;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzll {
    static String a(zzlj zzljVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        d(zzljVar, sb, 0);
        return sb.toString();
    }

    static final void b(StringBuilder sb, int i10, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                b(sb, i10, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                b(sb, i10, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(zzmj.a(zzjb.r((String) obj)));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzjb) {
            sb.append(": \"");
            sb.append(zzmj.a((zzjb) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzkc) {
            sb.append(" {");
            d((zzkc) obj, sb, i10 + 2);
            sb.append("\n");
            while (i11 < i10) {
                sb.append(' ');
                i11++;
            }
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i13 = i10 + 2;
        b(sb, i13, SDKConstants.PARAM_KEY, entry.getKey());
        b(sb, i13, SDKConstants.PARAM_VALUE, entry.getValue());
        sb.append("\n");
        while (i11 < i10) {
            sb.append(' ');
            i11++;
        }
        sb.append("}");
    }

    private static final String c(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (Character.isUpperCase(cCharAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(cCharAt));
        }
        return sb.toString();
    }

    private static void d(zzlj zzljVar, StringBuilder sb, int i10) {
        boolean zEquals;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : zzljVar.getClass().getDeclaredMethods()) {
            map2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                map.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String strSubstring = str.startsWith("get") ? str.substring(3) : str;
            if (strSubstring.endsWith("List") && !strSubstring.endsWith("OrBuilderList") && !strSubstring.equals("List")) {
                String strConcat = String.valueOf(strSubstring.substring(0, 1).toLowerCase()).concat(String.valueOf(strSubstring.substring(1, strSubstring.length() - 4)));
                Method method2 = (Method) map.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    b(sb, i10, c(strConcat), zzkc.q(method2, zzljVar, new Object[0]));
                }
            }
            if (strSubstring.endsWith("Map") && !strSubstring.equals("Map")) {
                String strConcat2 = String.valueOf(strSubstring.substring(0, 1).toLowerCase()).concat(String.valueOf(strSubstring.substring(1, strSubstring.length() - 3)));
                Method method3 = (Method) map.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    b(sb, i10, c(strConcat2), zzkc.q(method3, zzljVar, new Object[0]));
                }
            }
            if (((Method) map2.get("set".concat(strSubstring))) != null && (!strSubstring.endsWith("Bytes") || !map.containsKey("get".concat(String.valueOf(strSubstring.substring(0, strSubstring.length() - 5)))))) {
                String strConcat3 = String.valueOf(strSubstring.substring(0, 1).toLowerCase()).concat(String.valueOf(strSubstring.substring(1)));
                Method method4 = (Method) map.get("get".concat(strSubstring));
                Method method5 = (Method) map.get("has".concat(strSubstring));
                if (method4 != null) {
                    Object objQ = zzkc.q(method4, zzljVar, new Object[0]);
                    if (method5 == null) {
                        if (objQ instanceof Boolean) {
                            if (((Boolean) objQ).booleanValue()) {
                                b(sb, i10, c(strConcat3), objQ);
                            }
                        } else if (objQ instanceof Integer) {
                            if (((Integer) objQ).intValue() != 0) {
                                b(sb, i10, c(strConcat3), objQ);
                            }
                        } else if (objQ instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) objQ).floatValue()) != 0) {
                                b(sb, i10, c(strConcat3), objQ);
                            }
                        } else if (!(objQ instanceof Double)) {
                            if (objQ instanceof String) {
                                zEquals = objQ.equals(BuildConfig.FLAVOR);
                            } else if (objQ instanceof zzjb) {
                                zEquals = objQ.equals(zzjb.f23589p);
                            } else if (objQ instanceof zzlj) {
                                if (objQ != ((zzlj) objQ).a()) {
                                    b(sb, i10, c(strConcat3), objQ);
                                }
                            } else if (!(objQ instanceof Enum) || ((Enum) objQ).ordinal() != 0) {
                                b(sb, i10, c(strConcat3), objQ);
                            }
                            if (!zEquals) {
                                b(sb, i10, c(strConcat3), objQ);
                            }
                        } else if (Double.doubleToRawLongBits(((Double) objQ).doubleValue()) != 0) {
                            b(sb, i10, c(strConcat3), objQ);
                        }
                    } else if (((Boolean) zzkc.q(method5, zzljVar, new Object[0])).booleanValue()) {
                        b(sb, i10, c(strConcat3), objQ);
                    }
                }
            }
        }
        if (zzljVar instanceof zzjz) {
            throw null;
        }
        zzmm zzmmVar = ((zzkc) zzljVar).zzc;
        if (zzmmVar != null) {
            zzmmVar.g(sb, i10);
        }
    }
}
